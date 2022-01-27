package §0!Q§
{
   import §6a§.UIButtonRovio;
   
   public class UIButtonGroupRovio
   {
      
      public static const §0<§:int = 0;
      
      public static const §4!0§:int = 1;
      
      public static const §=!!§:int = 2;
       
      
      public var §9!'§:Array;
      
      public var §7h§:int;
      
      public var §?!%§:int;
      
      public var mName:String;
      
      public var §7x§:String;
      
      public function UIButtonGroupRovio(param1:int, param2:String)
      {
         super();
         this.§?!%§ = param1;
         this.mName = param2;
         this.§9!'§ = new Array();
      }
      
      public function §"g§(param1:UIButtonRovio) : void
      {
         if(!param1)
         {
            return;
         }
         this.§9!'§[this.§9!'§.length] = param1;
      }
      
      public function §?!#§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§7x§ = param1;
         if(this.§?!%§ == §0<§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!'§.length)
            {
               if((this.§9!'§[_loc2_] as UIButtonRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§9!'§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§9!'§[_loc2_] as UIButtonRovio).§0a§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§9!'§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§3B§);
               }
               _loc2_++;
            }
         }
         if(this.§?!%§ == §=!!§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!'§.length)
            {
               if((this.§9!'§[_loc2_] as UIButtonRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§9!'§[_loc2_] as UIButtonRovio).§0a§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§9!'§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§3B§);
                  }
                  else if((this.§9!'§[_loc2_] as UIButtonRovio).§0a§ == UIComponentInteractiveRovio.§3B§)
                  {
                     if(this.§[!c§().length < this.§7h§)
                     {
                        (this.§9!'§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§[!c§().length >= this.§7h§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!'§.length)
                  {
                     if((this.§9!'§[_loc3_] as UIButtonRovio).§0a§ == UIComponentInteractiveRovio.§3B§)
                     {
                        (this.§9!'§[_loc3_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!'§.length)
                  {
                     if((this.§9!'§[_loc3_] as UIButtonRovio).§0a§ == UIComponentInteractiveRovio.§#!K§)
                     {
                        (this.§9!'§[_loc3_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§3B§);
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
         while(_loc2_ < this.§9!'§.length)
         {
            (this.§9!'§[_loc2_] as UIButtonRovio).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §67§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!'§.length)
         {
            (this.§9!'§[_loc1_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§3B§);
            _loc1_++;
         }
      }
      
      public function §!q§(param1:Number) : void
      {
         this.§7h§ = param1;
         if(param1 == 1)
         {
            this.§?!%§ = §0<§;
         }
         else
         {
            this.§?!%§ = §=!!§;
         }
      }
      
      public function §1s§(param1:Array) : void
      {
         this.§67§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§?!#§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §[!c§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!'§.length)
         {
            if((this.§9!'§[_loc2_] as UIButtonRovio).§0a§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§9!'§[_loc2_] as UIButtonRovio).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
