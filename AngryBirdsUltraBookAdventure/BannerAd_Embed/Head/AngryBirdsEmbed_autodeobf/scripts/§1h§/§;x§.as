package §1h§
{
   import §^@§.§=^§;
   
   public class §;x§
   {
      
      public static const §`v§:int = 0;
      
      public static const §0!;§:int = 1;
      
      public static const §-B§:int = 2;
       
      
      public var §[^§:Array;
      
      public var §0!$§:int;
      
      public var §,!5§:int;
      
      public var mName:String;
      
      public var §-!<§:String;
      
      public function §;x§(param1:int, param2:String)
      {
         super();
         this.§,!5§ = param1;
         this.mName = param2;
         this.§[^§ = new Array();
      }
      
      public function §]!"§(param1:§=^§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§[^§[this.§[^§.length] = param1;
      }
      
      public function §0_§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§-!<§ = param1;
         if(this.§,!5§ == §`v§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§[^§.length)
            {
               if((this.§[^§[_loc2_] as §=^§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§[^§[_loc2_] as §=^§).setComponentState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§[^§[_loc2_] as §=^§).§9$§ == § use§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§[^§[_loc2_] as §=^§).setComponentState(§ use§.§-L§);
               }
               _loc2_++;
            }
         }
         if(this.§,!5§ == §-B§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§[^§.length)
            {
               if((this.§[^§[_loc2_] as §=^§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§[^§[_loc2_] as §=^§).§9$§ == § use§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§[^§[_loc2_] as §=^§).setComponentState(§ use§.§-L§);
                  }
                  else if((this.§[^§[_loc2_] as §=^§).§9$§ == § use§.§-L§)
                  {
                     if(this.§1N§().length < this.§0!$§)
                     {
                        (this.§[^§[_loc2_] as §=^§).setComponentState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§1N§().length >= this.§0!$§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§[^§.length)
                  {
                     if((this.§[^§[_loc3_] as §=^§).§9$§ == § use§.§-L§)
                     {
                        (this.§[^§[_loc3_] as §=^§).setComponentState(§ use§.§?J§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§[^§.length)
                  {
                     if((this.§[^§[_loc3_] as §=^§).§9$§ == § use§.§?J§)
                     {
                        (this.§[^§[_loc3_] as §=^§).setComponentState(§ use§.§-L§);
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
         while(_loc2_ < this.§[^§.length)
         {
            (this.§[^§[_loc2_] as §=^§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §]H§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[^§.length)
         {
            (this.§[^§[_loc1_] as §=^§).setComponentState(§ use§.§-L§);
            _loc1_++;
         }
      }
      
      public function §!y§(param1:Number) : void
      {
         this.§0!$§ = param1;
         if(param1 == 1)
         {
            this.§,!5§ = §`v§;
         }
         else
         {
            this.§,!5§ = §-B§;
         }
      }
      
      public function §0O§(param1:Array) : void
      {
         this.§]H§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§0_§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §1N§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§[^§.length)
         {
            if((this.§[^§[_loc2_] as §=^§).§9$§ == § use§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§[^§[_loc2_] as §=^§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
