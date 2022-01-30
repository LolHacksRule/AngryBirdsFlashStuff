package §@f§
{
   import §3!!§.§?v§;
   
   public class §4L§
   {
      
      public static const §;!y§:int = 0;
      
      public static const §'O§:int = 1;
      
      public static const §?o§:int = 2;
       
      
      public var §"!%§:Array;
      
      public var §!0§:int;
      
      public var §`u§:int;
      
      public var mName:String;
      
      public var §3!o§:String;
      
      public function §4L§(param1:int, param2:String)
      {
         super();
         this.§`u§ = param1;
         this.mName = param2;
         this.§"!%§ = new Array();
      }
      
      public function §3u§(param1:§?v§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§"!%§[this.§"!%§.length] = param1;
      }
      
      public function §,+§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§3!o§ = param1;
         if(this.§`u§ == §;!y§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§"!%§.length)
            {
               if((this.§"!%§[_loc2_] as §?v§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§"!%§[_loc2_] as §?v§).setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§"!%§[_loc2_] as §?v§).§`O§ == §4d§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§"!%§[_loc2_] as §?v§).setComponentState(§4d§.§&!i§);
               }
               _loc2_++;
            }
         }
         if(this.§`u§ == §?o§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§"!%§.length)
            {
               if((this.§"!%§[_loc2_] as §?v§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§"!%§[_loc2_] as §?v§).§`O§ == §4d§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§"!%§[_loc2_] as §?v§).setComponentState(§4d§.§&!i§);
                  }
                  else if((this.§"!%§[_loc2_] as §?v§).§`O§ == §4d§.§&!i§)
                  {
                     if(this.§ k§().length < this.§!0§)
                     {
                        (this.§"!%§[_loc2_] as §?v§).setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§ k§().length >= this.§!0§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§"!%§.length)
                  {
                     if((this.§"!%§[_loc3_] as §?v§).§`O§ == §4d§.§&!i§)
                     {
                        (this.§"!%§[_loc3_] as §?v§).setComponentState(§4d§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§"!%§.length)
                  {
                     if((this.§"!%§[_loc3_] as §?v§).§`O§ == §4d§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§"!%§[_loc3_] as §?v§).setComponentState(§4d§.§&!i§);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§"!%§.length)
         {
            (this.§"!%§[_loc3_] as §?v§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §1!w§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§"!%§.length)
         {
            (this.§"!%§[_loc1_] as §?v§).setComponentState(§4d§.§&!i§);
            _loc1_++;
         }
      }
      
      public function § !L§(param1:Number) : void
      {
         this.§!0§ = param1;
         if(param1 == 1)
         {
            this.§`u§ = §;!y§;
         }
         else
         {
            this.§`u§ = §?o§;
         }
      }
      
      public function §!!+§(param1:Array) : void
      {
         this.§1!w§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§,+§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function § k§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!%§.length)
         {
            if((this.§"!%§[_loc2_] as §?v§).§`O§ == §4d§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§"!%§[_loc2_] as §?v§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
