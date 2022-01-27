package §7!6§
{
   import §="<§.§87§;
   
   public class §-"4§
   {
      
      public static const §-!!§:int = 0;
      
      public static const §^"2§:int = 1;
      
      public static const §`N§:int = 2;
       
      
      public var §;c§:Array;
      
      public var §]Y§:int;
      
      public var §'!$§:int;
      
      public var mName:String;
      
      public var §[!6§:String;
      
      public function §-"4§(param1:int, param2:String)
      {
         super();
         this.§'!$§ = param1;
         this.mName = param2;
         this.§;c§ = new Array();
      }
      
      public function §?5§(param1:§87§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§;c§[this.§;c§.length] = param1;
      }
      
      public function §=!$§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§[!6§ = param1;
         if(this.§'!$§ == §-!!§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§;c§.length)
            {
               if((this.§;c§[_loc2_] as §87§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§;c§[_loc2_] as §87§).setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§;c§[_loc2_] as §87§).§?"2§ == §^l§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§;c§[_loc2_] as §87§).setComponentState(§^l§.§,Z§);
               }
               _loc2_++;
            }
         }
         if(this.§'!$§ == §`N§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§;c§.length)
            {
               if((this.§;c§[_loc2_] as §87§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§;c§[_loc2_] as §87§).§?"2§ == §^l§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§;c§[_loc2_] as §87§).setComponentState(§^l§.§,Z§);
                  }
                  else if((this.§;c§[_loc2_] as §87§).§?"2§ == §^l§.§,Z§)
                  {
                     if(this.§%!#§().length < this.§]Y§)
                     {
                        (this.§;c§[_loc2_] as §87§).setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§%!#§().length >= this.§]Y§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§;c§.length)
                  {
                     if((this.§;c§[_loc3_] as §87§).§?"2§ == §^l§.§,Z§)
                     {
                        (this.§;c§[_loc3_] as §87§).setComponentState(§^l§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§;c§.length)
                  {
                     if((this.§;c§[_loc3_] as §87§).§?"2§ == §^l§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§;c§[_loc3_] as §87§).setComponentState(§^l§.§,Z§);
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
         while(_loc2_ < this.§;c§.length)
         {
            (this.§;c§[_loc2_] as §87§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §%!w§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§;c§.length)
         {
            (this.§;c§[_loc1_] as §87§).setComponentState(§^l§.§,Z§);
            _loc1_++;
         }
      }
      
      public function §+p§(param1:Number) : void
      {
         this.§]Y§ = param1;
         if(param1 == 1)
         {
            this.§'!$§ = §-!!§;
         }
         else
         {
            this.§'!$§ = §`N§;
         }
      }
      
      public function §%[§(param1:Array) : void
      {
         this.§%!w§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§=!$§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §%!#§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§;c§.length)
         {
            if((this.§;c§[_loc2_] as §87§).§?"2§ == §^l§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§;c§[_loc2_] as §87§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
