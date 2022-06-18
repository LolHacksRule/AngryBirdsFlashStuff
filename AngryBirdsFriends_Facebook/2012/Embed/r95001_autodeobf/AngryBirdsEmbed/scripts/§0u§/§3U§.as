package §0u§
{
   import §4-§.§%+§;
   
   public class §3U§
   {
      
      public static const §!<§:int = 0;
      
      public static const §%=§:int = 1;
      
      public static const §&@§:int = 2;
       
      
      public var §>!>§:Array;
      
      public var §0!1§:int;
      
      public var §[!0§:int;
      
      public var mName:String;
      
      public var §try§:String;
      
      public function §3U§(param1:int, param2:String)
      {
         super();
         this.§[!0§ = param1;
         this.mName = param2;
         this.§>!>§ = new Array();
      }
      
      public function §%S§(param1:§%+§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§>!>§[this.§>!>§.length] = param1;
      }
      
      public function §%c§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§try§ = param1;
         if(this.§[!0§ == §!<§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§>!>§.length)
            {
               if((this.§>!>§[_loc2_] as §%+§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§>!>§[_loc2_] as §%+§).setComponentState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§>!>§[_loc2_] as §%+§).§[1§ == §"`§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§>!>§[_loc2_] as §%+§).setComponentState(§"`§.§&E§);
               }
               _loc2_++;
            }
         }
         if(this.§[!0§ == §&@§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§>!>§.length)
            {
               if((this.§>!>§[_loc2_] as §%+§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§>!>§[_loc2_] as §%+§).§[1§ == §"`§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§>!>§[_loc2_] as §%+§).setComponentState(§"`§.§&E§);
                  }
                  else if((this.§>!>§[_loc2_] as §%+§).§[1§ == §"`§.§&E§)
                  {
                     if(this.§'_§().length < this.§0!1§)
                     {
                        (this.§>!>§[_loc2_] as §%+§).setComponentState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§'_§().length >= this.§0!1§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§>!>§.length)
                  {
                     if((this.§>!>§[_loc3_] as §%+§).§[1§ == §"`§.§&E§)
                     {
                        (this.§>!>§[_loc3_] as §%+§).setComponentState(§"`§.§&!$§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§>!>§.length)
                  {
                     if((this.§>!>§[_loc3_] as §%+§).§[1§ == §"`§.§&!$§)
                     {
                        (this.§>!>§[_loc3_] as §%+§).setComponentState(§"`§.§&E§);
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
         while(_loc2_ < this.§>!>§.length)
         {
            (this.§>!>§[_loc2_] as §%+§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §!p§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!>§.length)
         {
            (this.§>!>§[_loc1_] as §%+§).setComponentState(§"`§.§&E§);
            _loc1_++;
         }
      }
      
      public function §+!B§(param1:Number) : void
      {
         this.§0!1§ = param1;
         if(param1 == 1)
         {
            this.§[!0§ = §!<§;
         }
         else
         {
            this.§[!0§ = §&@§;
         }
      }
      
      public function §>9§(param1:Array) : void
      {
         this.§!p§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§%c§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §'_§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!>§.length)
         {
            if((this.§>!>§[_loc2_] as §%+§).§[1§ == §"`§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§>!>§[_loc2_] as §%+§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
