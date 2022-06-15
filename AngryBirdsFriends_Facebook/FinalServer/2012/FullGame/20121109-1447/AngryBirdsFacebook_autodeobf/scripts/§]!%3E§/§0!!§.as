package §]!>§
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §0!!§
   {
      
      private static var §2"<§:§0!!§;
       
      
      private var §1h§:Array;
      
      private var §^H§:Dictionary;
      
      private var §+?§:Dictionary;
      
      public function §0!!§()
      {
         this.§1h§ = [];
         this.§^H§ = new Dictionary();
         this.§+?§ = new Dictionary();
         super();
         if(§2"<§)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §2"<§ = this;
      }
      
      public static function get §;"§() : §0!!§
      {
         if(!§2"<§)
         {
            §2"<§ = new §0!!§();
         }
         return §2"<§;
      }
      
      public static function §+K§(param1:Array, param2:Array) : Array
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
      
      public function §[!i§(param1:String) : void
      {
         if(this.§^H§[param1] == null)
         {
            this.§^H§[param1] = param1;
         }
      }
      
      public function §=[§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:SharedObject = null;
         if(this.§1h§.indexOf(param1) == -1)
         {
            this.§1h§.push(param1);
         }
         if(!param2)
         {
            try
            {
               _loc3_ = SharedObject.getLocal(§3T§.§"3§(),§3T§.§;b§);
               _loc3_.data.excludedChallenges = this.§1h§;
               _loc3_.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §>!Y§(param1:String) : Boolean
      {
         return this.§^H§[param1] == null && this.§+?§[param1] == null;
      }
      
      public function §;">§(param1:String) : Boolean
      {
         return this.§1h§.indexOf(param1) == -1 && this.§+?§[param1] == null;
      }
      
      public function §>1§(param1:String) : Boolean
      {
         return this.§+?§[param1] == null;
      }
      
      public function §@!u§(param1:String) : Boolean
      {
         return this.§+?§[param1] == null;
      }
      
      public function §8"$§() : Array
      {
         return this.§1h§;
      }
      
      public function §'+§() : Dictionary
      {
         return this.§^H§;
      }
      
      public function §4!Z§() : Dictionary
      {
         return this.§+?§;
      }
      
      public function §2I§() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = this.§+?§;
         for(_loc1_ in _loc3_)
         {
            return false;
         }
         return true;
      }
      
      public function §6!O§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§3T§.§"3§(),§3T§.§;b§)).data.excludedChallenges != undefined)
            {
               _loc2_ = _loc4_.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(_loc3_ in _loc2_)
         {
            this.§=[§(_loc3_,true);
         }
      }
      
      public function §;!2§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§[!i§(_loc2_);
         }
      }
      
      public function §]L§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§+?§[_loc2_] == null)
            {
               this.§+?§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
