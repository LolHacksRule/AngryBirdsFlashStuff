package §6v§
{
   import §"U§.§^'§;
   
   public class §64§
   {
      
      public static const §[W§:int = 0;
      
      public static const §61§:int = 1;
      
      public static const §&!R§:int = 2;
       
      
      public var §%%§:Array;
      
      public var §4!B§:int;
      
      public var §6!'§:int;
      
      public var mName:String;
      
      public var §@!7§:String;
      
      public function §64§(param1:int, param2:String)
      {
         super();
         this.§6!'§ = param1;
         this.mName = param2;
         this.§%%§ = new Array();
      }
      
      public function §3!F§(param1:§^'§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§%%§[this.§%%§.length] = param1;
      }
      
      public function §6L§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§@!7§ = param1;
         if(this.§6!'§ == §[W§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§%%§.length)
            {
               if((this.§%%§[_loc2_] as §^'§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§%%§[_loc2_] as §^'§).setComponentState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§%%§[_loc2_] as §^'§).§ var§ == §@V§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§%%§[_loc2_] as §^'§).setComponentState(§@V§.§?!@§);
               }
               _loc2_++;
            }
         }
         if(this.§6!'§ == §&!R§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§%%§.length)
            {
               if((this.§%%§[_loc2_] as §^'§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§%%§[_loc2_] as §^'§).§ var§ == §@V§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§%%§[_loc2_] as §^'§).setComponentState(§@V§.§?!@§);
                  }
                  else if((this.§%%§[_loc2_] as §^'§).§ var§ == §@V§.§?!@§)
                  {
                     if(this.§7!=§().length < this.§4!B§)
                     {
                        (this.§%%§[_loc2_] as §^'§).setComponentState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§7!=§().length >= this.§4!B§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§%%§.length)
                  {
                     if((this.§%%§[_loc3_] as §^'§).§ var§ == §@V§.§?!@§)
                     {
                        (this.§%%§[_loc3_] as §^'§).setComponentState(§@V§.§!%§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§%%§.length)
                  {
                     if((this.§%%§[_loc3_] as §^'§).§ var§ == §@V§.§!%§)
                     {
                        (this.§%%§[_loc3_] as §^'§).setComponentState(§@V§.§?!@§);
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
         while(_loc2_ < this.§%%§.length)
         {
            (this.§%%§[_loc2_] as §^'§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §%!;§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§%%§.length)
         {
            (this.§%%§[_loc1_] as §^'§).setComponentState(§@V§.§?!@§);
            _loc1_++;
         }
      }
      
      public function §>!1§(param1:Number) : void
      {
         this.§4!B§ = param1;
         if(param1 == 1)
         {
            this.§6!'§ = §[W§;
         }
         else
         {
            this.§6!'§ = §&!R§;
         }
      }
      
      public function §6x§(param1:Array) : void
      {
         this.§%!;§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§6L§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §7!=§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%%§.length)
         {
            if((this.§%%§[_loc2_] as §^'§).§ var§ == §@V§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§%%§[_loc2_] as §^'§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
