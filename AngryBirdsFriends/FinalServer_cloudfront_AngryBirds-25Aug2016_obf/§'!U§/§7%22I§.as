package §'!U§
{
   import §6"r§.§=O§;
   
   public class §7"I§
   {
      
      public static const §@!t§:int = 0;
      
      public static const §]#V§:int = 1;
      
      public static const §&#F§:int = 2;
       
      
      public var §?$0§:Array;
      
      public var §-"§:int;
      
      public var §+#w§:int;
      
      public var §2!4§:String;
      
      public var §&p§:String;
      
      public function §7"I§(param1:int, param2:String)
      {
         super();
         this.§+#w§ = param1;
         this.§2!4§ = param2;
         this.§?$0§ = new Array();
      }
      
      public function §-$<§(param1:§=O§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§?$0§[this.§?$0§.length] = param1;
      }
      
      public function §9"S§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.§&p§ = param1;
         var _loc2_:String = param1.toUpperCase();
         if(this.§+#w§ == §@!t§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§?$0§.length)
            {
               if((this.§?$0§[_loc3_] as §=O§).upperCaseName == _loc2_)
               {
                  (this.§?$0§[_loc3_] as §=O§).setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§?$0§[_loc3_] as §=O§).§<"Q§ == §4P§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§?$0§[_loc3_] as §=O§).setComponentState(§4P§.§#"X§);
               }
               _loc3_++;
            }
         }
         if(this.§+#w§ == §&#F§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§?$0§.length)
            {
               if((this.§?$0§[_loc3_] as §=O§).upperCaseName == _loc2_)
               {
                  if((this.§?$0§[_loc3_] as §=O§).§<"Q§ == §4P§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§?$0§[_loc3_] as §=O§).setComponentState(§4P§.§#"X§);
                  }
                  else if((this.§?$0§[_loc3_] as §=O§).§<"Q§ == §4P§.§#"X§)
                  {
                     if(this.§?#3§().length < this.§-"§)
                     {
                        (this.§?$0§[_loc3_] as §=O§).setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§?#3§().length >= this.§-"§)
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§?$0§.length)
                  {
                     if((this.§?$0§[_loc4_] as §=O§).§<"Q§ == §4P§.§#"X§)
                     {
                        (this.§?$0§[_loc4_] as §=O§).setComponentState(§4P§.COMPONENT_STATE_DISABLED);
                     }
                     _loc4_++;
                  }
               }
               else
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§?$0§.length)
                  {
                     if((this.§?$0§[_loc4_] as §=O§).§<"Q§ == §4P§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§?$0§[_loc4_] as §=O§).setComponentState(§4P§.§#"X§);
                     }
                     _loc4_++;
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§?$0§.length)
         {
            (this.§?$0§[_loc3_] as §=O§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §>K§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§?$0§.length)
         {
            (this.§?$0§[_loc1_] as §=O§).setComponentState(§4P§.§#"X§);
            _loc1_++;
         }
      }
      
      public function §7!&§(param1:Number) : void
      {
         this.§-"§ = param1;
         if(param1 == 1)
         {
            this.§+#w§ = §@!t§;
         }
         else
         {
            this.§+#w§ = §&#F§;
         }
      }
      
      public function §&x§(param1:Array) : void
      {
         this.§>K§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§9"S§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §?#3§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§?$0§.length)
         {
            if((this.§?$0§[_loc2_] as §=O§).§<"Q§ == §4P§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§?$0§[_loc2_] as §=O§).name);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
