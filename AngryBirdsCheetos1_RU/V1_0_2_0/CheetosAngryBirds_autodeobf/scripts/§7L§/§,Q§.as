package §7L§
{
   import §[]§.§+F§;
   
   public class §,Q§
   {
      
      public static const §[f§:int = 0;
      
      public static const §^_§:int = 1;
      
      public static const §4n§:int = 2;
       
      
      public var §9!7§:Array;
      
      public var §%s§:int;
      
      public var §%!J§:int;
      
      public var mName:String;
      
      public var §3H§:String;
      
      public function §,Q§(param1:int, param2:String)
      {
         super();
         this.§%!J§ = param1;
         this.mName = param2;
         this.§9!7§ = new Array();
      }
      
      public function §=]§(param1:§+F§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§9!7§[this.§9!7§.length] = param1;
      }
      
      public function § ![§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§3H§ = param1;
         if(this.§%!J§ == §[f§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!7§.length)
            {
               if((this.§9!7§[_loc2_] as §+F§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§9!7§[_loc2_] as §+F§).setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§9!7§[_loc2_] as §+F§).§'N§ == §+!$§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§9!7§[_loc2_] as §+F§).setComponentState(§+!$§.§^U§);
               }
               _loc2_++;
            }
         }
         if(this.§%!J§ == §4n§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!7§.length)
            {
               if((this.§9!7§[_loc2_] as §+F§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§9!7§[_loc2_] as §+F§).§'N§ == §+!$§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§9!7§[_loc2_] as §+F§).setComponentState(§+!$§.§^U§);
                  }
                  else if((this.§9!7§[_loc2_] as §+F§).§'N§ == §+!$§.§^U§)
                  {
                     if(this.§3!+§().length < this.§%s§)
                     {
                        (this.§9!7§[_loc2_] as §+F§).setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§3!+§().length >= this.§%s§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!7§.length)
                  {
                     if((this.§9!7§[_loc3_] as §+F§).§'N§ == §+!$§.§^U§)
                     {
                        (this.§9!7§[_loc3_] as §+F§).setComponentState(§+!$§.§2!H§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!7§.length)
                  {
                     if((this.§9!7§[_loc3_] as §+F§).§'N§ == §+!$§.§2!H§)
                     {
                        (this.§9!7§[_loc3_] as §+F§).setComponentState(§+!$§.§^U§);
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
         while(_loc2_ < this.§9!7§.length)
         {
            (this.§9!7§[_loc2_] as §+F§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §?G§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!7§.length)
         {
            (this.§9!7§[_loc1_] as §+F§).setComponentState(§+!$§.§^U§);
            _loc1_++;
         }
      }
      
      public function §!m§(param1:Number) : void
      {
         this.§%s§ = param1;
         if(param1 == 1)
         {
            this.§%!J§ = §[f§;
         }
         else
         {
            this.§%!J§ = §4n§;
         }
      }
      
      public function §;V§(param1:Array) : void
      {
         this.§?G§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§ ![§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §3!+§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!7§.length)
         {
            if((this.§9!7§[_loc2_] as §+F§).§'N§ == §+!$§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§9!7§[_loc2_] as §+F§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
