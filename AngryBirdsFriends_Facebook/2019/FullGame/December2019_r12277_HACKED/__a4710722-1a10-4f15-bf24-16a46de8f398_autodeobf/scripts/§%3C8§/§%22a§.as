package §<8§
{
   import §2$;§.§;!b§;
   
   public class §"a§
   {
      
      public static const §@"3§:int = 0;
      
      public static const §]#8§:int = 1;
      
      public static const §;#T§:int = 2;
       
      
      public var §'![§:Array;
      
      public var §`#_§:int;
      
      public var §4!$§:int;
      
      public var §-#3§:String;
      
      public var §#"c§:String;
      
      public function §"a§(param1:int, param2:String)
      {
         super();
         this.§4!$§ = param1;
         this.§-#3§ = param2;
         this.§'![§ = new Array();
      }
      
      public function §4P§(param1:§;!b§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§'![§[this.§'![§.length] = param1;
      }
      
      public function §##&§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.§#"c§ = param1;
         var _loc2_:String = param1.toUpperCase();
         if(this.§4!$§ == §@"3§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§'![§.length)
            {
               if((this.§'![§[_loc3_] as §;!b§).upperCaseName == _loc2_)
               {
                  (this.§'![§[_loc3_] as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§'![§[_loc3_] as §;!b§).§?"@§ == §;"k§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§'![§[_loc3_] as §;!b§).setComponentState(§;"k§.§`"2§);
               }
               _loc3_++;
            }
         }
         if(this.§4!$§ == §;#T§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§'![§.length)
            {
               if((this.§'![§[_loc3_] as §;!b§).upperCaseName == _loc2_)
               {
                  if((this.§'![§[_loc3_] as §;!b§).§?"@§ == §;"k§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§'![§[_loc3_] as §;!b§).setComponentState(§;"k§.§`"2§);
                  }
                  else if((this.§'![§[_loc3_] as §;!b§).§?"@§ == §;"k§.§`"2§)
                  {
                     if(this.§>"]§().length < this.§`#_§)
                     {
                        (this.§'![§[_loc3_] as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§>"]§().length >= this.§`#_§)
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§'![§.length)
                  {
                     if((this.§'![§[_loc4_] as §;!b§).§?"@§ == §;"k§.§`"2§)
                     {
                        (this.§'![§[_loc4_] as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
                     }
                     _loc4_++;
                  }
               }
               else
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§'![§.length)
                  {
                     if((this.§'![§[_loc4_] as §;!b§).§?"@§ == §;"k§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§'![§[_loc4_] as §;!b§).setComponentState(§;"k§.§`"2§);
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
         while(_loc3_ < this.§'![§.length)
         {
            (this.§'![§[_loc3_] as §;!b§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §`!$§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'![§.length)
         {
            (this.§'![§[_loc1_] as §;!b§).setComponentState(§;"k§.§`"2§);
            _loc1_++;
         }
      }
      
      public function §7"c§(param1:Number) : void
      {
         this.§`#_§ = param1;
         if(param1 == 1)
         {
            this.§4!$§ = §@"3§;
         }
         else
         {
            this.§4!$§ = §;#T§;
         }
      }
      
      public function §^9§(param1:Array) : void
      {
         this.§`!$§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§##&§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §>"]§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§'![§.length)
         {
            if((this.§'![§[_loc2_] as §;!b§).§?"@§ == §;"k§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§'![§[_loc2_] as §;!b§).name);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
