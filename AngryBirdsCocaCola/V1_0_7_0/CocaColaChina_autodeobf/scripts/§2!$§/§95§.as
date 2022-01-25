package §2!$§
{
   import §!E§.§;!P§;
   
   public class §95§
   {
      
      public static const §%z§:int = 0;
      
      public static const §,!N§:int = 1;
      
      public static const §^1§:int = 2;
       
      
      public var §<>§:Array;
      
      public var §&z§:int;
      
      public var §%!5§:int;
      
      public var mName:String;
      
      public var §5!%§:String;
      
      public function §95§(param1:int, param2:String)
      {
         super();
         this.§%!5§ = param1;
         this.mName = param2;
         this.§<>§ = new Array();
      }
      
      public function §?1§(param1:§;!P§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§<>§[this.§<>§.length] = param1;
      }
      
      public function §%!N§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§5!%§ = param1;
         if(this.§%!5§ == §%z§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§<>§.length)
            {
               if((this.§<>§[_loc2_] as §;!P§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§<>§[_loc2_] as §;!P§).setComponentState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§<>§[_loc2_] as §;!P§).§-!N§ == §#!K§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§<>§[_loc2_] as §;!P§).setComponentState(§#!K§.§8!O§);
               }
               _loc2_++;
            }
         }
         if(this.§%!5§ == §^1§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§<>§.length)
            {
               if((this.§<>§[_loc2_] as §;!P§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§<>§[_loc2_] as §;!P§).§-!N§ == §#!K§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§<>§[_loc2_] as §;!P§).setComponentState(§#!K§.§8!O§);
                  }
                  else if((this.§<>§[_loc2_] as §;!P§).§-!N§ == §#!K§.§8!O§)
                  {
                     if(this.§@r§().length < this.§&z§)
                     {
                        (this.§<>§[_loc2_] as §;!P§).setComponentState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§@r§().length >= this.§&z§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§<>§.length)
                  {
                     if((this.§<>§[_loc3_] as §;!P§).§-!N§ == §#!K§.§8!O§)
                     {
                        (this.§<>§[_loc3_] as §;!P§).setComponentState(§#!K§.§3H§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§<>§.length)
                  {
                     if((this.§<>§[_loc3_] as §;!P§).§-!N§ == §#!K§.§3H§)
                     {
                        (this.§<>§[_loc3_] as §;!P§).setComponentState(§#!K§.§8!O§);
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
         while(_loc2_ < this.§<>§.length)
         {
            (this.§<>§[_loc2_] as §;!P§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §,!T§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§<>§.length)
         {
            (this.§<>§[_loc1_] as §;!P§).setComponentState(§#!K§.§8!O§);
            _loc1_++;
         }
      }
      
      public function §48§(param1:Number) : void
      {
         this.§&z§ = param1;
         if(param1 == 1)
         {
            this.§%!5§ = §%z§;
         }
         else
         {
            this.§%!5§ = §^1§;
         }
      }
      
      public function §&!!§(param1:Array) : void
      {
         this.§,!T§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§%!N§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §@r§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§<>§.length)
         {
            if((this.§<>§[_loc2_] as §;!P§).§-!N§ == §#!K§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§<>§[_loc2_] as §;!P§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
