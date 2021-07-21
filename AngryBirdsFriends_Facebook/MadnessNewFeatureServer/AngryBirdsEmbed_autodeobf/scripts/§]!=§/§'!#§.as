package §]!=§
{
   import §"!B§.§+!9§;
   
   public class §'!#§
   {
      
      public static const §3C§:int = 0;
      
      public static const §4c§:int = 1;
      
      public static const §1B§:int = 2;
       
      
      public var §]W§:Array;
      
      public var §+i§:int;
      
      public var §"q§:int;
      
      public var mName:String;
      
      public var §^!<§:String;
      
      public function §'!#§(param1:int, param2:String)
      {
         super();
         this.§"q§ = param1;
         this.mName = param2;
         this.§]W§ = new Array();
      }
      
      public function §"!8§(param1:§+!9§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§]W§[this.§]W§.length] = param1;
      }
      
      public function §=k§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§^!<§ = param1;
         if(this.§"q§ == §3C§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§]W§.length)
            {
               if((this.§]W§[_loc2_] as §+!9§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§]W§[_loc2_] as §+!9§).setComponentState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§]W§[_loc2_] as §+!9§).§;K§ == §&P§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§]W§[_loc2_] as §+!9§).setComponentState(§&P§.§"0§);
               }
               _loc2_++;
            }
         }
         if(this.§"q§ == §1B§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§]W§.length)
            {
               if((this.§]W§[_loc2_] as §+!9§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§]W§[_loc2_] as §+!9§).§;K§ == §&P§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§]W§[_loc2_] as §+!9§).setComponentState(§&P§.§"0§);
                  }
                  else if((this.§]W§[_loc2_] as §+!9§).§;K§ == §&P§.§"0§)
                  {
                     if(this.§#"§().length < this.§+i§)
                     {
                        (this.§]W§[_loc2_] as §+!9§).setComponentState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§#"§().length >= this.§+i§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§]W§.length)
                  {
                     if((this.§]W§[_loc3_] as §+!9§).§;K§ == §&P§.§"0§)
                     {
                        (this.§]W§[_loc3_] as §+!9§).setComponentState(§&P§.§0!1§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§]W§.length)
                  {
                     if((this.§]W§[_loc3_] as §+!9§).§;K§ == §&P§.§0!1§)
                     {
                        (this.§]W§[_loc3_] as §+!9§).setComponentState(§&P§.§"0§);
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
         while(_loc2_ < this.§]W§.length)
         {
            (this.§]W§[_loc2_] as §+!9§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §6w§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§]W§.length)
         {
            (this.§]W§[_loc1_] as §+!9§).setComponentState(§&P§.§"0§);
            _loc1_++;
         }
      }
      
      public function §5!%§(param1:Number) : void
      {
         this.§+i§ = param1;
         if(param1 == 1)
         {
            this.§"q§ = §3C§;
         }
         else
         {
            this.§"q§ = §1B§;
         }
      }
      
      public function §%!M§(param1:Array) : void
      {
         this.§6w§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§=k§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §#"§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]W§.length)
         {
            if((this.§]W§[_loc2_] as §+!9§).§;K§ == §&P§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§]W§[_loc2_] as §+!9§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
