package §^x§
{
   import §5!8§.§;!Z§;
   
   public class §8$§
   {
      
      public static const §,"?§:int = 0;
      
      public static const §!7§:int = 1;
      
      public static const §&a§:int = 2;
       
      
      public var §`c§:Array;
      
      public var §?"%§:int;
      
      public var §`"=§:int;
      
      public var mName:String;
      
      public var §]!;§:String;
      
      public function §8$§(param1:int, param2:String)
      {
         super();
         this.§`"=§ = param1;
         this.mName = param2;
         this.§`c§ = new Array();
      }
      
      public function §!T§(param1:§;!Z§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§`c§[this.§`c§.length] = param1;
      }
      
      public function §!!5§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§]!;§ = param1;
         if(this.§`"=§ == §,"?§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§`c§.length)
            {
               if((this.§`c§[_loc2_] as §;!Z§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§`c§[_loc2_] as §;!Z§).setComponentState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§`c§[_loc2_] as §;!Z§).§8"!§ == §;_§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§`c§[_loc2_] as §;!Z§).setComponentState(§;_§.§ "2§);
               }
               _loc2_++;
            }
         }
         if(this.§`"=§ == §&a§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§`c§.length)
            {
               if((this.§`c§[_loc2_] as §;!Z§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§`c§[_loc2_] as §;!Z§).§8"!§ == §;_§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§`c§[_loc2_] as §;!Z§).setComponentState(§;_§.§ "2§);
                  }
                  else if((this.§`c§[_loc2_] as §;!Z§).§8"!§ == §;_§.§ "2§)
                  {
                     if(this.§@!7§().length < this.§?"%§)
                     {
                        (this.§`c§[_loc2_] as §;!Z§).setComponentState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§@!7§().length >= this.§?"%§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§`c§.length)
                  {
                     if((this.§`c§[_loc3_] as §;!Z§).§8"!§ == §;_§.§ "2§)
                     {
                        (this.§`c§[_loc3_] as §;!Z§).setComponentState(§;_§.§<!v§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§`c§.length)
                  {
                     if((this.§`c§[_loc3_] as §;!Z§).§8"!§ == §;_§.§<!v§)
                     {
                        (this.§`c§[_loc3_] as §;!Z§).setComponentState(§;_§.§ "2§);
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
         while(_loc2_ < this.§`c§.length)
         {
            (this.§`c§[_loc2_] as §;!Z§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §?!T§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§`c§.length)
         {
            (this.§`c§[_loc1_] as §;!Z§).setComponentState(§;_§.§ "2§);
            _loc1_++;
         }
      }
      
      public function §+!n§(param1:Number) : void
      {
         this.§?"%§ = param1;
         if(param1 == 1)
         {
            this.§`"=§ = §,"?§;
         }
         else
         {
            this.§`"=§ = §&a§;
         }
      }
      
      public function §]![§(param1:Array) : void
      {
         this.§?!T§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§!!5§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §@!7§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§`c§.length)
         {
            if((this.§`c§[_loc2_] as §;!Z§).§8"!§ == §;_§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§`c§[_loc2_] as §;!Z§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
