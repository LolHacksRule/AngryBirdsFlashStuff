package §'!D§
{
   import §>M§.§^-§;
   
   public class §0y§
   {
      
      public static const §,!!§:int = 0;
      
      public static const §!z§:int = 1;
      
      public static const §@k§:int = 2;
       
      
      public var §"!H§:Array;
      
      public var §!!Q§:int;
      
      public var § !H§:int;
      
      public var mName:String;
      
      public var §7!U§:String;
      
      public function §0y§(param1:int, param2:String)
      {
         super();
         this.§ !H§ = param1;
         this.mName = param2;
         this.§"!H§ = new Array();
      }
      
      public function §0q§(param1:§^-§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§"!H§[this.§"!H§.length] = param1;
      }
      
      public function §;I§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§7!U§ = param1;
         if(this.§ !H§ == §,!!§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§"!H§.length)
            {
               if((this.§"!H§[_loc2_] as §^-§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§"!H§[_loc2_] as §^-§).setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§"!H§[_loc2_] as §^-§).§<!V§ == §0j§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§"!H§[_loc2_] as §^-§).setComponentState(§0j§.§+o§);
               }
               _loc2_++;
            }
         }
         if(this.§ !H§ == §@k§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§"!H§.length)
            {
               if((this.§"!H§[_loc2_] as §^-§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§"!H§[_loc2_] as §^-§).§<!V§ == §0j§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§"!H§[_loc2_] as §^-§).setComponentState(§0j§.§+o§);
                  }
                  else if((this.§"!H§[_loc2_] as §^-§).§<!V§ == §0j§.§+o§)
                  {
                     if(this.§-B§().length < this.§!!Q§)
                     {
                        (this.§"!H§[_loc2_] as §^-§).setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§-B§().length >= this.§!!Q§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§"!H§.length)
                  {
                     if((this.§"!H§[_loc3_] as §^-§).§<!V§ == §0j§.§+o§)
                     {
                        (this.§"!H§[_loc3_] as §^-§).setComponentState(§0j§.§%!T§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§"!H§.length)
                  {
                     if((this.§"!H§[_loc3_] as §^-§).§<!V§ == §0j§.§%!T§)
                     {
                        (this.§"!H§[_loc3_] as §^-§).setComponentState(§0j§.§+o§);
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
         while(_loc2_ < this.§"!H§.length)
         {
            (this.§"!H§[_loc2_] as §^-§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §&!H§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§"!H§.length)
         {
            (this.§"!H§[_loc1_] as §^-§).setComponentState(§0j§.§+o§);
            _loc1_++;
         }
      }
      
      public function §"!C§(param1:Number) : void
      {
         this.§!!Q§ = param1;
         if(param1 == 1)
         {
            this.§ !H§ = §,!!§;
         }
         else
         {
            this.§ !H§ = §@k§;
         }
      }
      
      public function §@!d§(param1:Array) : void
      {
         this.§&!H§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§;I§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §-B§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!H§.length)
         {
            if((this.§"!H§[_loc2_] as §^-§).§<!V§ == §0j§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§"!H§[_loc2_] as §^-§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
