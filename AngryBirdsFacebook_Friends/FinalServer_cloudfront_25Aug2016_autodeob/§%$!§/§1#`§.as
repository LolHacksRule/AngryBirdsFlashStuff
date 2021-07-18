package §%$!§
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §1#`§
   {
      
      private static var §,!m§:§1#`§;
       
      
      private var §6#E§:Array;
      
      private var §?]§:Dictionary;
      
      private var §<"S§:Dictionary;
      
      public function §1#`§()
      {
         this.§6#E§ = [];
         this.§?]§ = new Dictionary();
         this.§<"S§ = new Dictionary();
         super();
         if(§,!m§)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §,!m§ = this;
      }
      
      public static function get §3!]§() : §1#`§
      {
         if(!§,!m§)
         {
            §,!m§ = new §1#`§();
         }
         return §,!m§;
      }
      
      public static function §7!z§(param1:Array, param2:Array) : Array
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
      
      public function §3!9§(param1:String) : void
      {
         if(this.§?]§[param1] == null)
         {
            this.§?]§[param1] = param1;
         }
      }
      
      public function §5$;§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:SharedObject = null;
         if(this.§6#E§.indexOf(param1) == -1)
         {
            this.§6#E§.push(param1);
         }
         if(!param2)
         {
            try
            {
               _loc3_ = SharedObject.getLocal(§8G§.§6i§(),§8G§.§0#?§);
               _loc3_.data.excludedChallenges = this.§6#E§;
               _loc3_.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §"",§(param1:String) : Boolean
      {
         return this.§?]§[param1] == null && this.§<"S§[param1] == null;
      }
      
      public function §'!^§(param1:String) : Boolean
      {
         return this.§6#E§.indexOf(param1) == -1 && this.§<"S§[param1] == null;
      }
      
      public function §;!8§(param1:String) : Boolean
      {
         return this.§<"S§[param1] == null;
      }
      
      public function §@"A§(param1:String) : Boolean
      {
         return this.§<"S§[param1] == null;
      }
      
      public function §^#S§() : Array
      {
         return this.§6#E§;
      }
      
      public function §"#+§() : Dictionary
      {
         return this.§?]§;
      }
      
      public function § #j§() : Dictionary
      {
         return this.§<"S§;
      }
      
      public function §2@§() : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = this.§<"S§;
         if(!(§§hasnext(_loc3_,_loc2_)))
         {
            return true;
         }
      }
      
      public function §8!$§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§8G§.§6i§(),§8G§.§0#?§)).data.excludedChallenges != undefined)
            {
               _loc2_ = _loc4_.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(_loc3_ in _loc2_)
         {
            this.§5$;§(_loc3_,true);
         }
      }
      
      public function §++§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§3!9§(_loc2_);
         }
      }
      
      public function §@!'§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§<"S§[_loc2_] == null)
            {
               this.§<"S§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
