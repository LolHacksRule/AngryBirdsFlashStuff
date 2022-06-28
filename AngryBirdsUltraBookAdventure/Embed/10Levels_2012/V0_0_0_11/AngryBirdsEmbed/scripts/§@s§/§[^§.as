package §@s§
{
   import §=^§.§]P§;
   
   public class §[^§
   {
      
      public static const §0!;§:int = 0;
      
      public static const §-B§:int = 1;
      
      public static const §<h§:int = 2;
       
      
      public var §0!$§:Array;
      
      public var §-!<§:int;
      
      public var §,!5§:int;
      
      public var mName:String;
      
      public var §]!"§:String;
      
      public function §[^§(param1:int, param2:String)
      {
         super();
         this.§,!5§ = param1;
         this.mName = param2;
         this.§0!$§ = new Array();
      }
      
      public function §0_§(param1:§]P§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§0!$§[this.§0!$§.length] = param1;
      }
      
      public function §]H§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§]!"§ = param1;
         if(this.§,!5§ == §0!;§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§0!$§.length)
            {
               if((this.§0!$§[_loc2_] as §]P§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§0!$§[_loc2_] as §]P§).setComponentState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§0!$§[_loc2_] as §]P§).§ var§ == §9$§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§0!$§[_loc2_] as §]P§).setComponentState(§9$§.§?J§);
               }
               _loc2_++;
            }
         }
         if(this.§,!5§ == §<h§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§0!$§.length)
            {
               if((this.§0!$§[_loc2_] as §]P§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§0!$§[_loc2_] as §]P§).§ var§ == §9$§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§0!$§[_loc2_] as §]P§).setComponentState(§9$§.§?J§);
                  }
                  else if((this.§0!$§[_loc2_] as §]P§).§ var§ == §9$§.§?J§)
                  {
                     if(this.§`v§().length < this.§-!<§)
                     {
                        (this.§0!$§[_loc2_] as §]P§).setComponentState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§`v§().length >= this.§-!<§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§0!$§.length)
                  {
                     if((this.§0!$§[_loc3_] as §]P§).§ var§ == §9$§.§?J§)
                     {
                        (this.§0!$§[_loc3_] as §]P§).setComponentState(§9$§.§^8§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§0!$§.length)
                  {
                     if((this.§0!$§[_loc3_] as §]P§).§ var§ == §9$§.§^8§)
                     {
                        (this.§0!$§[_loc3_] as §]P§).setComponentState(§9$§.§?J§);
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
         while(_loc2_ < this.§0!$§.length)
         {
            (this.§0!$§[_loc2_] as §]P§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §!y§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!$§.length)
         {
            (this.§0!$§[_loc1_] as §]P§).setComponentState(§9$§.§?J§);
            _loc1_++;
         }
      }
      
      public function §0O§(param1:Number) : void
      {
         this.§-!<§ = param1;
         if(param1 == 1)
         {
            this.§,!5§ = §0!;§;
         }
         else
         {
            this.§,!5§ = §<h§;
         }
      }
      
      public function §1N§(param1:Array) : void
      {
         this.§!y§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§]H§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §`v§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!$§.length)
         {
            if((this.§0!$§[_loc2_] as §]P§).§ var§ == §9$§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§0!$§[_loc2_] as §]P§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
