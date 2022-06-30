package §1Q§
{
   import §@!]§.§&!!§;
   
   public class §-§
   {
      
      public static const §'?§:int = 0;
      
      public static const §[!b§:int = 1;
      
      public static const §+0§:int = 2;
       
      
      public var §;x§:Array;
      
      public var §%!Y§:int;
      
      public var §!,§:int;
      
      public var mName:String;
      
      public var §5N§:String;
      
      public function §-§(param1:int, param2:String)
      {
         super();
         this.§!,§ = param1;
         this.mName = param2;
         this.§;x§ = new Array();
      }
      
      public function §6!#§(param1:§&!!§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§;x§[this.§;x§.length] = param1;
      }
      
      public function §%s§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§5N§ = param1;
         if(this.§!,§ == §'?§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§;x§.length)
            {
               if((this.§;x§[_loc2_] as §&!!§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§;x§[_loc2_] as §&!!§).setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§;x§[_loc2_] as §&!!§).§'w§ == §4p§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§;x§[_loc2_] as §&!!§).setComponentState(§4p§.§#!%§);
               }
               _loc2_++;
            }
         }
         if(this.§!,§ == §+0§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§;x§.length)
            {
               if((this.§;x§[_loc2_] as §&!!§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§;x§[_loc2_] as §&!!§).§'w§ == §4p§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§;x§[_loc2_] as §&!!§).setComponentState(§4p§.§#!%§);
                  }
                  else if((this.§;x§[_loc2_] as §&!!§).§'w§ == §4p§.§#!%§)
                  {
                     if(this.§7I§().length < this.§%!Y§)
                     {
                        (this.§;x§[_loc2_] as §&!!§).setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§7I§().length >= this.§%!Y§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§;x§.length)
                  {
                     if((this.§;x§[_loc3_] as §&!!§).§'w§ == §4p§.§#!%§)
                     {
                        (this.§;x§[_loc3_] as §&!!§).setComponentState(§4p§.§9L§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§;x§.length)
                  {
                     if((this.§;x§[_loc3_] as §&!!§).§'w§ == §4p§.§9L§)
                     {
                        (this.§;x§[_loc3_] as §&!!§).setComponentState(§4p§.§#!%§);
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
         while(_loc2_ < this.§;x§.length)
         {
            (this.§;x§[_loc2_] as §&!!§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §,!K§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§;x§.length)
         {
            (this.§;x§[_loc1_] as §&!!§).setComponentState(§4p§.§#!%§);
            _loc1_++;
         }
      }
      
      public function §0w§(param1:Number) : void
      {
         this.§%!Y§ = param1;
         if(param1 == 1)
         {
            this.§!,§ = §'?§;
         }
         else
         {
            this.§!,§ = §+0§;
         }
      }
      
      public function §4&§(param1:Array) : void
      {
         this.§,!K§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§%s§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §7I§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§;x§.length)
         {
            if((this.§;x§[_loc2_] as §&!!§).§'w§ == §4p§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§;x§[_loc2_] as §&!!§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
