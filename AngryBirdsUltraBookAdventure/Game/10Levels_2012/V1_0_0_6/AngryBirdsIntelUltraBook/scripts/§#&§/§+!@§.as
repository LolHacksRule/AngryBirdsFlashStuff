package §#&§
{
   public class §+!@§
   {
      
      private static var §6@§:§+!@§;
       
      
      private var §1?§:Array;
      
      private var §8!'§:Array;
      
      public function §+!@§()
      {
         this.§1?§ = [];
         this.§8!'§ = [];
         super();
         if(§6@§)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §6@§ = this;
      }
      
      public static function get §7!j§() : §+!@§
      {
         if(!§6@§)
         {
            §6@§ = new §+!@§();
         }
         return §6@§;
      }
      
      public static function §%b§(param1:Array, param2:Array) : Array
      {
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(_loc3_.indexOf(_loc4_) == -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public function §"4§(param1:String) : void
      {
         if(this.§1?§.indexOf(param1) == -1)
         {
            this.§1?§.push(param1);
         }
      }
      
      public function §`!v§(param1:String) : Boolean
      {
         return this.§1?§.indexOf(param1) == -1 && this.§8!'§.indexOf(param1) == -1;
      }
      
      public function §+!i§(param1:String) : Boolean
      {
         return this.§8!'§.indexOf(param1) == -1;
      }
      
      public function §;o§(param1:String) : Boolean
      {
         return this.§8!'§.indexOf(param1) == -1;
      }
      
      public function §#!T§() : Array
      {
         return this.§1?§;
      }
      
      public function §]<§() : Array
      {
         return this.§8!'§;
      }
      
      public function §6t§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§"4§(_loc2_);
         }
      }
      
      public function §@!$§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§8!'§.indexOf(_loc2_) == -1)
            {
               this.§8!'§.push(_loc2_);
            }
         }
      }
   }
}
