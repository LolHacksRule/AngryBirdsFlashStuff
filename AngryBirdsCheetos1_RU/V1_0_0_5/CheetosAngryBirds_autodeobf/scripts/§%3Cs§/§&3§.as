package §<s§
{
   import §[%§.§6!§;
   
   public class §&3§
   {
      
      public static const §4!$§:int = 0;
      
      public static const § !I§:int = 1;
      
      public static const §@H§:int = 2;
       
      
      public var §`!P§:Array;
      
      public var §<y§:int;
      
      public var §[!P§:int;
      
      public var mName:String;
      
      public var §^J§:String;
      
      public function §&3§(param1:int, param2:String)
      {
         super();
         this.§[!P§ = param1;
         this.mName = param2;
         this.§`!P§ = new Array();
      }
      
      public function §0W§(param1:§6!§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§`!P§[this.§`!P§.length] = param1;
      }
      
      public function §7§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§^J§ = param1;
         if(this.§[!P§ == §4!$§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§`!P§.length)
            {
               if((this.§`!P§[_loc2_] as §6!§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§`!P§[_loc2_] as §6!§).setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§`!P§[_loc2_] as §6!§).§6t§ == §&4§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§`!P§[_loc2_] as §6!§).setComponentState(§&4§.§=!'§);
               }
               _loc2_++;
            }
         }
         if(this.§[!P§ == §@H§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§`!P§.length)
            {
               if((this.§`!P§[_loc2_] as §6!§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§`!P§[_loc2_] as §6!§).§6t§ == §&4§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§`!P§[_loc2_] as §6!§).setComponentState(§&4§.§=!'§);
                  }
                  else if((this.§`!P§[_loc2_] as §6!§).§6t§ == §&4§.§=!'§)
                  {
                     if(this.§4C§().length < this.§<y§)
                     {
                        (this.§`!P§[_loc2_] as §6!§).setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§4C§().length >= this.§<y§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§`!P§.length)
                  {
                     if((this.§`!P§[_loc3_] as §6!§).§6t§ == §&4§.§=!'§)
                     {
                        (this.§`!P§[_loc3_] as §6!§).setComponentState(§&4§.§'!U§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§`!P§.length)
                  {
                     if((this.§`!P§[_loc3_] as §6!§).§6t§ == §&4§.§'!U§)
                     {
                        (this.§`!P§[_loc3_] as §6!§).setComponentState(§&4§.§=!'§);
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
         while(_loc2_ < this.§`!P§.length)
         {
            (this.§`!P§[_loc2_] as §6!§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §#!B§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!P§.length)
         {
            (this.§`!P§[_loc1_] as §6!§).setComponentState(§&4§.§=!'§);
            _loc1_++;
         }
      }
      
      public function §-!@§(param1:Number) : void
      {
         this.§<y§ = param1;
         if(param1 == 1)
         {
            this.§[!P§ = §4!$§;
         }
         else
         {
            this.§[!P§ = §@H§;
         }
      }
      
      public function §=-§(param1:Array) : void
      {
         this.§#!B§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§7§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §4C§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!P§.length)
         {
            if((this.§`!P§[_loc2_] as §6!§).§6t§ == §&4§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§`!P§[_loc2_] as §6!§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
