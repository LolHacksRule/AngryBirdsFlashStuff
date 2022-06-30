package §#!C§
{
   import flash.display.BitmapData;
   
   public class §=_§
   {
       
      
      private var §+F§:Vector.<§'!e§>;
      
      protected var §#5§:BitmapData;
      
      protected var mName:String;
      
      private var §8=§:Number = 1.0;
      
      public function §=_§(param1:BitmapData)
      {
         super();
         this.§#5§ = param1;
         this.§+F§ = new Vector.<§'!e§>();
      }
      
      public function get §^!`§() : int
      {
         return this.§+F§.length;
      }
      
      public function get §?E§() : int
      {
         return this.§#5§.width;
      }
      
      public function get §,P§() : int
      {
         return this.§#5§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§#5§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§8=§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§8=§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§#5§)
         {
            this.§#5§.dispose();
            this.§#5§ = null;
         }
         this.§+F§ = new Vector.<§'!e§>();
      }
      
      public function §69§(param1:BitmapData) : void
      {
         this.§#5§ = param1;
      }
      
      public function §5!H§(param1:§'!e§) : void
      {
         this.§+F§.push(param1);
      }
      
      public function §6!3§(param1:String) : §'!e§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§+F§.length)
         {
            if(this.§+F§[_loc2_].mName == param1)
            {
               return this.§+F§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §?!-§(param1:int) : §'!e§
      {
         if(param1 < 0 || param1 >= this.§+F§.length)
         {
            return null;
         }
         return this.§+F§[param1];
      }
   }
}
