import SwiftUI

struct HomepageView: View {
    var username: String
    
    // Define the custom color using RGB values
    let customColor = Color(UIColor(red: 45/255, green: 84/255, blue: 232/255, alpha: 1.0))

    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            Circle()
                .scale(2.0)
                .foregroundColor(customColor.opacity(0.40)) // Use custom color with opacity
            Circle()
                .scale(1.75)
                .foregroundColor(.white)

            VStack {
                Image("logo2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding()

                Text("Welcome, \(username)")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()

                List {
                    Text("Patient Information:")
                    Text("Name: \(username)")
                    Text("Age: 29") // Example data
                    Text("Height: 180 cm") // Example data
                    Text("Weight: 75 kg") // Example data
                    Text("Medical History: None") // Example data
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            
        }
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView(username: "Joe")
    }
}

