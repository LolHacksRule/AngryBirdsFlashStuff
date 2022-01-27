package §5X§
{
   import §77§.§@_§;
   
   public class §3""§
   {
      
      public static const §9!3§:int = 0;
      
      public static const §&k§:int = 1;
      
      public static const §%!o§:int = 2;
       
      
      public var §1!'§:Array;
      
      public var §48§:int;
      
      public var §!k§:int;
      
      public var mName:String;
      
      public var §<!d§:String;
      
      public function §3""§(param1:int, param2:String)
      {
         super();
         this.§!k§ = param1;
         this.mName = param2;
         this.§1!'§ = new Array();
      }
      
      public function §4"A§(param1:§@_§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§1!'§[this.§1!'§.length] = param1;
      }
      
      public function §^0§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§<!d§ = param1;
         if(this.§!k§ == §9!3§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§1!'§.length)
            {
               if((this.§1!'§[_loc2_] as §@_§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§1!'§[_loc2_] as §@_§).setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§1!'§[_loc2_] as §@_§).§3w§ == §@!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§1!'§[_loc2_] as §@_§).setComponentState(§@!!§.§else §);
               }
               _loc2_++;
            }
         }
         if(this.§!k§ == §%!o§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§1!'§.length)
            {
               if((this.§1!'§[_loc2_] as §@_§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§1!'§[_loc2_] as §@_§).§3w§ == §@!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§1!'§[_loc2_] as §@_§).setComponentState(§@!!§.§else §);
                  }
                  else if((this.§1!'§[_loc2_] as §@_§).§3w§ == §@!!§.§else §)
                  {
                     if(this.§@T§().length < this.§48§)
                     {
                        (this.§1!'§[_loc2_] as §@_§).setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§@T§().length >= this.§48§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§1!'§.length)
                  {
                     if((this.§1!'§[_loc3_] as §@_§).§3w§ == §@!!§.§else §)
                     {
                        (this.§1!'§[_loc3_] as §@_§).setComponentState(§@!!§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§1!'§.length)
                  {
                     if((this.§1!'§[_loc3_] as §@_§).§3w§ == §@!!§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§1!'§[_loc3_] as §@_§).setComponentState(§@!!§.§else §);
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
         while(_loc2_ < this.§1!'§.length)
         {
            (this.§1!'§[_loc2_] as §@_§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §!0§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§1!'§.length)
         {
            (this.§1!'§[_loc1_] as §@_§).setComponentState(§@!!§.§else §);
            _loc1_++;
         }
      }
      
      public function §[^§(param1:Number) : void
      {
         this.§48§ = param1;
         if(param1 == 1)
         {
            this.§!k§ = §9!3§;
         }
         else
         {
            this.§!k§ = §%!o§;
         }
      }
      
      public function §"!,§(param1:Array) : void
      {
         this.§!0§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§^0§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §@T§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!'§.length)
         {
            if((this.§1!'§[_loc2_] as §@_§).§3w§ == §@!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§1!'§[_loc2_] as §@_§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
