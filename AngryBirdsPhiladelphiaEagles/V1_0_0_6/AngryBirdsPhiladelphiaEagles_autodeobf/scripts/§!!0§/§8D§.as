package §!!0§
{
   import §8]§.§-u§;
   
   public class §8D§
   {
      
      public static const §#i§:int = 0;
      
      public static const §9v§:int = 1;
      
      public static const §6?§:int = 2;
       
      
      public var §`k§:Array;
      
      public var §?!9§:int;
      
      public var §5!9§:int;
      
      public var mName:String;
      
      public var §02§:String;
      
      public function §8D§(param1:int, param2:String)
      {
         super();
         this.§5!9§ = param1;
         this.mName = param2;
         this.§`k§ = new Array();
      }
      
      public function §-_§(param1:§-u§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§`k§[this.§`k§.length] = param1;
      }
      
      public function §6!B§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§02§ = param1;
         if(this.§5!9§ == §#i§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§`k§.length)
            {
               if((this.§`k§[_loc2_] as §-u§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§`k§[_loc2_] as §-u§).setComponentState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§`k§[_loc2_] as §-u§).§"!<§ == §2§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§`k§[_loc2_] as §-u§).setComponentState(§2§.§<!K§);
               }
               _loc2_++;
            }
         }
         if(this.§5!9§ == §6?§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§`k§.length)
            {
               if((this.§`k§[_loc2_] as §-u§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§`k§[_loc2_] as §-u§).§"!<§ == §2§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§`k§[_loc2_] as §-u§).setComponentState(§2§.§<!K§);
                  }
                  else if((this.§`k§[_loc2_] as §-u§).§"!<§ == §2§.§<!K§)
                  {
                     if(this.§?!O§().length < this.§?!9§)
                     {
                        (this.§`k§[_loc2_] as §-u§).setComponentState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§?!O§().length >= this.§?!9§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§`k§.length)
                  {
                     if((this.§`k§[_loc3_] as §-u§).§"!<§ == §2§.§<!K§)
                     {
                        (this.§`k§[_loc3_] as §-u§).setComponentState(§2§.§1u§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§`k§.length)
                  {
                     if((this.§`k§[_loc3_] as §-u§).§"!<§ == §2§.§1u§)
                     {
                        (this.§`k§[_loc3_] as §-u§).setComponentState(§2§.§<!K§);
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
         while(_loc2_ < this.§`k§.length)
         {
            (this.§`k§[_loc2_] as §-u§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §55§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§`k§.length)
         {
            (this.§`k§[_loc1_] as §-u§).setComponentState(§2§.§<!K§);
            _loc1_++;
         }
      }
      
      public function §^^§(param1:Number) : void
      {
         this.§?!9§ = param1;
         if(param1 == 1)
         {
            this.§5!9§ = §#i§;
         }
         else
         {
            this.§5!9§ = §6?§;
         }
      }
      
      public function § ?§(param1:Array) : void
      {
         this.§55§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§6!B§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §?!O§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§`k§.length)
         {
            if((this.§`k§[_loc2_] as §-u§).§"!<§ == §2§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§`k§[_loc2_] as §-u§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
