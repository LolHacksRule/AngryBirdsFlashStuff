package §'!A§
{
   import §'p§.§="#§;
   
   public class § !q§
   {
      
      public static const §>!2§:int = 0;
      
      public static const §!!o§:int = 1;
      
      public static const §!!I§:int = 2;
       
      
      public var §#!S§:Array;
      
      public var §@b§:int;
      
      public var §#!W§:int;
      
      public var mName:String;
      
      public var §get §:String;
      
      public function § !q§(param1:int, param2:String)
      {
         super();
         this.§#!W§ = param1;
         this.mName = param2;
         this.§#!S§ = new Array();
      }
      
      public function §?!;§(param1:§="#§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§#!S§[this.§#!S§.length] = param1;
      }
      
      public function §>!,§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§get § = param1;
         if(this.§#!W§ == §>!2§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§#!S§.length)
            {
               if((this.§#!S§[_loc2_] as §="#§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§#!S§[_loc2_] as §="#§).setComponentState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§#!S§[_loc2_] as §="#§).§%!v§ == §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§#!S§[_loc2_] as §="#§).setComponentState(§9!!§.§,!0§);
               }
               _loc2_++;
            }
         }
         if(this.§#!W§ == §!!I§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§#!S§.length)
            {
               if((this.§#!S§[_loc2_] as §="#§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§#!S§[_loc2_] as §="#§).§%!v§ == §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§#!S§[_loc2_] as §="#§).setComponentState(§9!!§.§,!0§);
                  }
                  else if((this.§#!S§[_loc2_] as §="#§).§%!v§ == §9!!§.§,!0§)
                  {
                     if(this.§>U§().length < this.§@b§)
                     {
                        (this.§#!S§[_loc2_] as §="#§).setComponentState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§>U§().length >= this.§@b§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§#!S§.length)
                  {
                     if((this.§#!S§[_loc3_] as §="#§).§%!v§ == §9!!§.§,!0§)
                     {
                        (this.§#!S§[_loc3_] as §="#§).setComponentState(§9!!§.§%!§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§#!S§.length)
                  {
                     if((this.§#!S§[_loc3_] as §="#§).§%!v§ == §9!!§.§%!§)
                     {
                        (this.§#!S§[_loc3_] as §="#§).setComponentState(§9!!§.§,!0§);
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
         while(_loc2_ < this.§#!S§.length)
         {
            (this.§#!S§[_loc2_] as §="#§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §4!R§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!S§.length)
         {
            (this.§#!S§[_loc1_] as §="#§).setComponentState(§9!!§.§,!0§);
            _loc1_++;
         }
      }
      
      public function § 0§(param1:Number) : void
      {
         this.§@b§ = param1;
         if(param1 == 1)
         {
            this.§#!W§ = §>!2§;
         }
         else
         {
            this.§#!W§ = §!!I§;
         }
      }
      
      public function §]!u§(param1:Array) : void
      {
         this.§4!R§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§>!,§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §>U§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!S§.length)
         {
            if((this.§#!S§[_loc2_] as §="#§).§%!v§ == §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§#!S§[_loc2_] as §="#§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
