package §3!,§
{
   import flash.display.BitmapData;
   
   public class § e§
   {
       
      
      private var §9'§:Vector.<§8!3§>;
      
      protected var §<7§:BitmapData;
      
      protected var mName:String;
      
      private var §case §:Number = 1.0;
      
      public function § e§(param1:BitmapData)
      {
         super();
         this.§<7§ = param1;
         this.§9'§ = new Vector.<§8!3§>();
      }
      
      public function get §&"§() : int
      {
         return this.§9'§.length;
      }
      
      public function get §!!X§() : int
      {
         return this.§<7§.width;
      }
      
      public function get §1N§() : int
      {
         return this.§<7§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§<7§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§case §;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§case § = param1;
      }
      
      public function dispose() : void
      {
         if(this.§<7§)
         {
            this.§<7§.dispose();
            this.§<7§ = null;
         }
         this.§9'§ = new Vector.<§8!3§>();
      }
      
      public function §%!L§(param1:BitmapData) : void
      {
         this.§<7§ = param1;
      }
      
      public function §87§(param1:§8!3§) : void
      {
         this.§9'§.push(param1);
      }
      
      public function §+"§(param1:String) : §8!3§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§9'§.length)
         {
            if(this.§9'§[_loc2_].mName == param1)
            {
               return this.§9'§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §59§(param1:int) : §8!3§
      {
         if(param1 < 0 || param1 >= this.§9'§.length)
         {
            return null;
         }
         return this.§9'§[param1];
      }
   }
}
