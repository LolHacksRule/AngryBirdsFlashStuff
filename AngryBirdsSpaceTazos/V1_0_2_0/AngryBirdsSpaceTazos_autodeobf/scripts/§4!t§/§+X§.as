package §4!t§
{
   import §!i§.§3!A§;
   
   public class §+X§
   {
      
      public static const §4!v§:int = 0;
      
      public static const §="?§:int = 1;
      
      public static const §^J§:int = 2;
       
      
      public var §;!6§:Array;
      
      public var §+!J§:int;
      
      public var §-!e§:int;
      
      public var mName:String;
      
      public var §@!P§:String;
      
      public function §+X§(param1:int, param2:String)
      {
         super();
         this.§-!e§ = param1;
         this.mName = param2;
         this.§;!6§ = new Array();
      }
      
      public function §=2§(param1:§3!A§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§;!6§[this.§;!6§.length] = param1;
      }
      
      public function §1S§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§@!P§ = param1;
         if(this.§-!e§ == §4!v§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§;!6§.length)
            {
               if((this.§;!6§[_loc2_] as §3!A§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§;!6§[_loc2_] as §3!A§).setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§;!6§[_loc2_] as §3!A§).§5!P§ == §>r§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§;!6§[_loc2_] as §3!A§).setComponentState(§>r§.§""7§);
               }
               _loc2_++;
            }
         }
         if(this.§-!e§ == §^J§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§;!6§.length)
            {
               if((this.§;!6§[_loc2_] as §3!A§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§;!6§[_loc2_] as §3!A§).§5!P§ == §>r§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§;!6§[_loc2_] as §3!A§).setComponentState(§>r§.§""7§);
                  }
                  else if((this.§;!6§[_loc2_] as §3!A§).§5!P§ == §>r§.§""7§)
                  {
                     if(this.§41§().length < this.§+!J§)
                     {
                        (this.§;!6§[_loc2_] as §3!A§).setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§41§().length >= this.§+!J§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§;!6§.length)
                  {
                     if((this.§;!6§[_loc3_] as §3!A§).§5!P§ == §>r§.§""7§)
                     {
                        (this.§;!6§[_loc3_] as §3!A§).setComponentState(§>r§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§;!6§.length)
                  {
                     if((this.§;!6§[_loc3_] as §3!A§).§5!P§ == §>r§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§;!6§[_loc3_] as §3!A§).setComponentState(§>r§.§""7§);
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
         while(_loc2_ < this.§;!6§.length)
         {
            (this.§;!6§[_loc2_] as §3!A§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §>,§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!6§.length)
         {
            (this.§;!6§[_loc1_] as §3!A§).setComponentState(§>r§.§""7§);
            _loc1_++;
         }
      }
      
      public function §<!u§(param1:Number) : void
      {
         this.§+!J§ = param1;
         if(param1 == 1)
         {
            this.§-!e§ = §4!v§;
         }
         else
         {
            this.§-!e§ = §^J§;
         }
      }
      
      public function §-[§(param1:Array) : void
      {
         this.§>,§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§1S§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §41§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§;!6§.length)
         {
            if((this.§;!6§[_loc2_] as §3!A§).§5!P§ == §>r§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§;!6§[_loc2_] as §3!A§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
