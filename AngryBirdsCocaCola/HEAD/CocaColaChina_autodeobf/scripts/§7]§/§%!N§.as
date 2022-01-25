package §7]§
{
   import §'P§.§,!"§;
   
   public class §%!N§
   {
      
      public static const §+!J§:int = 0;
      
      public static const §9H§:int = 1;
      
      public static const §=f§:int = 2;
       
      
      public var §,!T§:Array;
      
      public var §48§:int;
      
      public var §!4§:int;
      
      public var mName:String;
      
      public var §&!!§:String;
      
      public function §%!N§(param1:int, param2:String)
      {
         super();
         this.§!4§ = param1;
         this.mName = param2;
         this.§,!T§ = new Array();
      }
      
      public function §@r§(param1:§,!"§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§,!T§[this.§,!T§.length] = param1;
      }
      
      public function §%z§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§&!!§ = param1;
         if(this.§!4§ == §+!J§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§,!T§.length)
            {
               if((this.§,!T§[_loc2_] as §,!"§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§,!T§[_loc2_] as §,!"§).setComponentState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§,!T§[_loc2_] as §,!"§).§>k§ == §8N§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§,!T§[_loc2_] as §,!"§).setComponentState(§8N§.§9L§);
               }
               _loc2_++;
            }
         }
         if(this.§!4§ == §=f§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§,!T§.length)
            {
               if((this.§,!T§[_loc2_] as §,!"§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§,!T§[_loc2_] as §,!"§).§>k§ == §8N§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§,!T§[_loc2_] as §,!"§).setComponentState(§8N§.§9L§);
                  }
                  else if((this.§,!T§[_loc2_] as §,!"§).§>k§ == §8N§.§9L§)
                  {
                     if(this.§`!Z§().length < this.§48§)
                     {
                        (this.§,!T§[_loc2_] as §,!"§).setComponentState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§`!Z§().length >= this.§48§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§,!T§.length)
                  {
                     if((this.§,!T§[_loc3_] as §,!"§).§>k§ == §8N§.§9L§)
                     {
                        (this.§,!T§[_loc3_] as §,!"§).setComponentState(§8N§.§!N§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§,!T§.length)
                  {
                     if((this.§,!T§[_loc3_] as §,!"§).§>k§ == §8N§.§!N§)
                     {
                        (this.§,!T§[_loc3_] as §,!"§).setComponentState(§8N§.§9L§);
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
         while(_loc2_ < this.§,!T§.length)
         {
            (this.§,!T§[_loc2_] as §,!"§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §,!N§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!T§.length)
         {
            (this.§,!T§[_loc1_] as §,!"§).setComponentState(§8N§.§9L§);
            _loc1_++;
         }
      }
      
      public function §^1§(param1:Number) : void
      {
         this.§48§ = param1;
         if(param1 == 1)
         {
            this.§!4§ = §+!J§;
         }
         else
         {
            this.§!4§ = §=f§;
         }
      }
      
      public function §7x§(param1:Array) : void
      {
         this.§,!N§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§%z§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §`!Z§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!T§.length)
         {
            if((this.§,!T§[_loc2_] as §,!"§).§>k§ == §8N§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§,!T§[_loc2_] as §,!"§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
