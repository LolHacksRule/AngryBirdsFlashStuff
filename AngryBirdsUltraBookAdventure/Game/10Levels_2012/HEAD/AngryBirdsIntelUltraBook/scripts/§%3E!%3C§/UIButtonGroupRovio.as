package §>!<§
{
   import §"!2§.UIButtonRovio;
   
   public class UIButtonGroupRovio
   {
      
      public static const §+!4§:int = 0;
      
      public static const §+U§:int = 1;
      
      public static const §&c§:int = 2;
       
      
      public var §8!G§:Array;
      
      public var §,2§:int;
      
      public var §9!Q§:int;
      
      public var mName:String;
      
      public var §78§:String;
      
      public function UIButtonGroupRovio(param1:int, param2:String)
      {
         super();
         this.§9!Q§ = param1;
         this.mName = param2;
         this.§8!G§ = new Array();
      }
      
      public function §2!d§(param1:UIButtonRovio) : void
      {
         if(!param1)
         {
            return;
         }
         this.§8!G§[this.§8!G§.length] = param1;
      }
      
      public function §!>§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§78§ = param1;
         if(this.§9!Q§ == §+!4§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§8!G§.length)
            {
               if((this.§8!G§[_loc2_] as UIButtonRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§8!G§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§8!G§[_loc2_] as UIButtonRovio).§9!h§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§8!G§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§6!C§);
               }
               _loc2_++;
            }
         }
         if(this.§9!Q§ == §&c§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§8!G§.length)
            {
               if((this.§8!G§[_loc2_] as UIButtonRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§8!G§[_loc2_] as UIButtonRovio).§9!h§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§8!G§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§6!C§);
                  }
                  else if((this.§8!G§[_loc2_] as UIButtonRovio).§9!h§ == UIComponentInteractiveRovio.§6!C§)
                  {
                     if(this.§-;§().length < this.§,2§)
                     {
                        (this.§8!G§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§-;§().length >= this.§,2§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§8!G§.length)
                  {
                     if((this.§8!G§[_loc3_] as UIButtonRovio).§9!h§ == UIComponentInteractiveRovio.§6!C§)
                     {
                        (this.§8!G§[_loc3_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§8!G§.length)
                  {
                     if((this.§8!G§[_loc3_] as UIButtonRovio).§9!h§ == UIComponentInteractiveRovio.§,a§)
                     {
                        (this.§8!G§[_loc3_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§6!C§);
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
         while(_loc2_ < this.§8!G§.length)
         {
            (this.§8!G§[_loc2_] as UIButtonRovio).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §catch§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!G§.length)
         {
            (this.§8!G§[_loc1_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§6!C§);
            _loc1_++;
         }
      }
      
      public function §6!B§(param1:Number) : void
      {
         this.§,2§ = param1;
         if(param1 == 1)
         {
            this.§9!Q§ = §+!4§;
         }
         else
         {
            this.§9!Q§ = §&c§;
         }
      }
      
      public function §4!B§(param1:Array) : void
      {
         this.§catch§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§!>§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §-;§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§8!G§.length)
         {
            if((this.§8!G§[_loc2_] as UIButtonRovio).§9!h§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§8!G§[_loc2_] as UIButtonRovio).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
