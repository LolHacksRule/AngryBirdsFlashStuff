package §`g§
{
   import flash.display.BitmapData;
   
   public class §&_§
   {
       
      
      private var §7!3§:Vector.<§]!3§>;
      
      protected var § k§:BitmapData;
      
      protected var mName:String;
      
      private var §,&§:Number = 1.0;
      
      public function §&_§(param1:BitmapData)
      {
         super();
         this.§ k§ = param1;
         this.§7!3§ = new Vector.<§]!3§>();
      }
      
      public function get §3t§() : int
      {
         return this.§7!3§.length;
      }
      
      public function get §"z§() : int
      {
         return this.§ k§.width;
      }
      
      public function get §9!>§() : int
      {
         return this.§ k§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§ k§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§,&§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§,&§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§ k§)
         {
            this.§ k§.dispose();
            this.§ k§ = null;
         }
         this.§7!3§ = new Vector.<§]!3§>();
      }
      
      public function §;L§(param1:BitmapData) : void
      {
         this.§ k§ = param1;
      }
      
      public function §>j§(param1:§]!3§) : void
      {
         this.§7!3§.push(param1);
      }
      
      public function §,!<§(param1:String) : §]!3§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7!3§.length)
         {
            if(this.§7!3§[_loc2_].mName == param1)
            {
               return this.§7!3§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §7&§(param1:int) : §]!3§
      {
         if(param1 < 0 || param1 >= this.§7!3§.length)
         {
            return null;
         }
         return this.§7!3§[param1];
      }
   }
}
