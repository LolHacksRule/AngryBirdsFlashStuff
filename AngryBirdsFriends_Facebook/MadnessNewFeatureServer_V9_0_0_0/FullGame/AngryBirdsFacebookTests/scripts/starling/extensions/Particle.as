package starling.extensions
{
   public class Particle
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var scaleX:Number;
      
      public var scaleY:Number;
      
      public var rotation:Number;
      
      public var red:Number;
      
      public var green:Number;
      
      public var blue:Number;
      
      public var alpha:Number;
      
      public var currentTime:Number;
      
      public var totalTime:Number;
      
      public function Particle()
      {
         super();
         this.x = this.y = this.rotation = this.currentTime = 0;
         this.totalTime = this.alpha = this.scaleX = this.scaleY = 1;
         this.red = 1;
         this.green = 1;
         this.blue = 1;
      }
   }
}
