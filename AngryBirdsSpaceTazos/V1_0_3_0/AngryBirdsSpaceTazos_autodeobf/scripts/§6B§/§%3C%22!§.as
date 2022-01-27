package §6B§
{
   import §,!7§.§%!J§;
   
   public class §<"!§
   {
      
      public static const §,G§:int = 0;
      
      public static const §=!f§:int = 1;
      
      public static const §72§:int = 2;
       
      
      public var §;Z§:Array;
      
      public var §2Q§:int;
      
      public var § !b§:int;
      
      public var mName:String;
      
      public var §4!P§:String;
      
      public function §<"!§(param1:int, param2:String)
      {
         super();
         this.§ !b§ = param1;
         this.mName = param2;
         this.§;Z§ = new Array();
      }
      
      public function §7!M§(param1:§%!J§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§;Z§[this.§;Z§.length] = param1;
      }
      
      public function §?!X§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§4!P§ = param1;
         if(this.§ !b§ == §,G§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§;Z§.length)
            {
               if((this.§;Z§[_loc2_] as §%!J§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§;Z§[_loc2_] as §%!J§).setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§;Z§[_loc2_] as §%!J§).§3"§ == §5![§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§;Z§[_loc2_] as §%!J§).setComponentState(§5![§.§`=§);
               }
               _loc2_++;
            }
         }
         if(this.§ !b§ == §72§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§;Z§.length)
            {
               if((this.§;Z§[_loc2_] as §%!J§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§;Z§[_loc2_] as §%!J§).§3"§ == §5![§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§;Z§[_loc2_] as §%!J§).setComponentState(§5![§.§`=§);
                  }
                  else if((this.§;Z§[_loc2_] as §%!J§).§3"§ == §5![§.§`=§)
                  {
                     if(this.§while§().length < this.§2Q§)
                     {
                        (this.§;Z§[_loc2_] as §%!J§).setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§while§().length >= this.§2Q§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§;Z§.length)
                  {
                     if((this.§;Z§[_loc3_] as §%!J§).§3"§ == §5![§.§`=§)
                     {
                        (this.§;Z§[_loc3_] as §%!J§).setComponentState(§5![§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§;Z§.length)
                  {
                     if((this.§;Z§[_loc3_] as §%!J§).§3"§ == §5![§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§;Z§[_loc3_] as §%!J§).setComponentState(§5![§.§`=§);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;Z§.length)
         {
            (this.§;Z§[_loc2_] as §%!J§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function § !z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§;Z§.length)
         {
            (this.§;Z§[_loc1_] as §%!J§).setComponentState(§5![§.§`=§);
            _loc1_++;
         }
      }
      
      public function §`D§(param1:Number) : void
      {
         this.§2Q§ = param1;
         if(param1 == 1)
         {
            this.§ !b§ = §,G§;
         }
         else
         {
            this.§ !b§ = §72§;
         }
      }
      
      public function §>a§(param1:Array) : void
      {
         this.§ !z§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§?!X§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §while§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§;Z§.length)
         {
            if((this.§;Z§[_loc2_] as §%!J§).§3"§ == §5![§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§;Z§[_loc2_] as §%!J§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
