package §&!&§
{
   import §<!I§.§="5§;
   
   public class §4!M§
   {
      
      public static const §1"!§:int = 0;
      
      public static const §!!s§:int = 1;
      
      public static const § !1§:int = 2;
       
      
      public var §1D§:Array;
      
      public var §8t§:int;
      
      public var §[!G§:int;
      
      public var mName:String;
      
      public var §9!'§:String;
      
      public function §4!M§(param1:int, param2:String)
      {
         super();
         this.§[!G§ = param1;
         this.mName = param2;
         this.§1D§ = new Array();
      }
      
      public function §6"8§(param1:§="5§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§1D§[this.§1D§.length] = param1;
      }
      
      public function § !Z§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§9!'§ = param1;
         if(this.§[!G§ == §1"!§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§1D§.length)
            {
               if((this.§1D§[_loc2_] as §="5§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§1D§[_loc2_] as §="5§).setComponentState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§1D§[_loc2_] as §="5§).§]p§ == §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§1D§[_loc2_] as §="5§).setComponentState(§+!A§.§5"6§);
               }
               _loc2_++;
            }
         }
         if(this.§[!G§ == § !1§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§1D§.length)
            {
               if((this.§1D§[_loc2_] as §="5§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§1D§[_loc2_] as §="5§).§]p§ == §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§1D§[_loc2_] as §="5§).setComponentState(§+!A§.§5"6§);
                  }
                  else if((this.§1D§[_loc2_] as §="5§).§]p§ == §+!A§.§5"6§)
                  {
                     if(this.§[!t§().length < this.§8t§)
                     {
                        (this.§1D§[_loc2_] as §="5§).setComponentState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§[!t§().length >= this.§8t§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§1D§.length)
                  {
                     if((this.§1D§[_loc3_] as §="5§).§]p§ == §+!A§.§5"6§)
                     {
                        (this.§1D§[_loc3_] as §="5§).setComponentState(§+!A§.§@x§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§1D§.length)
                  {
                     if((this.§1D§[_loc3_] as §="5§).§]p§ == §+!A§.§@x§)
                     {
                        (this.§1D§[_loc3_] as §="5§).setComponentState(§+!A§.§5"6§);
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
         while(_loc2_ < this.§1D§.length)
         {
            (this.§1D§[_loc2_] as §="5§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §+!H§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§1D§.length)
         {
            (this.§1D§[_loc1_] as §="5§).setComponentState(§+!A§.§5"6§);
            _loc1_++;
         }
      }
      
      public function §[!i§(param1:Number) : void
      {
         this.§8t§ = param1;
         if(param1 == 1)
         {
            this.§[!G§ = §1"!§;
         }
         else
         {
            this.§[!G§ = § !1§;
         }
      }
      
      public function §@!A§(param1:Array) : void
      {
         this.§+!H§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§ !Z§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §[!t§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1D§.length)
         {
            if((this.§1D§[_loc2_] as §="5§).§]p§ == §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§1D§[_loc2_] as §="5§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
