package §,L§
{
   import §0"$§.§;§;
   
   public class §;k§
   {
      
      public static const §=!;§:int = 0;
      
      public static const §,h§:int = 1;
      
      public static const §'u§:int = 2;
       
      
      public var §9t§:Array;
      
      public var §'g§:int;
      
      public var §^"'§:int;
      
      public var mName:String;
      
      public var §9"#§:String;
      
      public function §;k§(param1:int, param2:String)
      {
         super();
         this.§^"'§ = param1;
         this.mName = param2;
         this.§9t§ = new Array();
      }
      
      public function §7!W§(param1:§;§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§9t§[this.§9t§.length] = param1;
      }
      
      public function §?!Y§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§9"#§ = param1;
         if(this.§^"'§ == §=!;§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9t§.length)
            {
               if((this.§9t§[_loc2_] as §;§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§9t§[_loc2_] as §;§).setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§9t§[_loc2_] as §;§).§<6§ == §%J§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§9t§[_loc2_] as §;§).setComponentState(§%J§.§2!r§);
               }
               _loc2_++;
            }
         }
         if(this.§^"'§ == §'u§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9t§.length)
            {
               if((this.§9t§[_loc2_] as §;§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§9t§[_loc2_] as §;§).§<6§ == §%J§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§9t§[_loc2_] as §;§).setComponentState(§%J§.§2!r§);
                  }
                  else if((this.§9t§[_loc2_] as §;§).§<6§ == §%J§.§2!r§)
                  {
                     if(this.§!!n§().length < this.§'g§)
                     {
                        (this.§9t§[_loc2_] as §;§).setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§!!n§().length >= this.§'g§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9t§.length)
                  {
                     if((this.§9t§[_loc3_] as §;§).§<6§ == §%J§.§2!r§)
                     {
                        (this.§9t§[_loc3_] as §;§).setComponentState(§%J§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9t§.length)
                  {
                     if((this.§9t§[_loc3_] as §;§).§<6§ == §%J§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§9t§[_loc3_] as §;§).setComponentState(§%J§.§2!r§);
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
         while(_loc3_ < this.§9t§.length)
         {
            (this.§9t§[_loc3_] as §;§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §+&§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9t§.length)
         {
            (this.§9t§[_loc1_] as §;§).setComponentState(§%J§.§2!r§);
            _loc1_++;
         }
      }
      
      public function §4!L§(param1:Number) : void
      {
         this.§'g§ = param1;
         if(param1 == 1)
         {
            this.§^"'§ = §=!;§;
         }
         else
         {
            this.§^"'§ = §'u§;
         }
      }
      
      public function §=5§(param1:Array) : void
      {
         this.§+&§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§?!Y§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §!!n§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9t§.length)
         {
            if((this.§9t§[_loc2_] as §;§).§<6§ == §%J§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§9t§[_loc2_] as §;§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
