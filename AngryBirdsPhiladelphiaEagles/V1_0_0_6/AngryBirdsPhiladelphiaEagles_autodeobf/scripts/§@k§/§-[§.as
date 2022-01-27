package §@k§
{
   import flash.display.BitmapData;
   
   public class §-[§
   {
       
      
      private var §&1§:Vector.<§false§>;
      
      protected var §@`§:BitmapData;
      
      protected var mName:String;
      
      private var §"[§:Number = 1.0;
      
      public function §-[§(param1:BitmapData)
      {
         super();
         this.§@`§ = param1;
         this.§&1§ = new Vector.<§false§>();
      }
      
      public function get §5!0§() : int
      {
         return this.§&1§.length;
      }
      
      public function get §&a§() : int
      {
         return this.§@`§.width;
      }
      
      public function get §8!@§() : int
      {
         return this.§@`§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§@`§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§"[§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§"[§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§@`§)
         {
            this.§@`§.dispose();
            this.§@`§ = null;
         }
         this.§&1§ = new Vector.<§false§>();
      }
      
      public function §%b§(param1:BitmapData) : void
      {
         this.§@`§ = param1;
      }
      
      public function §&w§(param1:§false§) : void
      {
         this.§&1§.push(param1);
      }
      
      public function §&!9§(param1:String) : §false§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&1§.length)
         {
            if(this.§&1§[_loc2_].mName == param1)
            {
               return this.§&1§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §3!+§(param1:int) : §false§
      {
         if(param1 < 0 || param1 >= this.§&1§.length)
         {
            return null;
         }
         return this.§&1§[param1];
      }
   }
}
