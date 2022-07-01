package §>P§
{
   import §;"+§.§9!M§;
   
   public class §>L§
   {
      
      public static const §5!O§:int = 0;
      
      public static const §=!R§:int = 1;
      
      public static const §>!?§:int = 2;
       
      
      public var §>7§:Array;
      
      public var §!!z§:int;
      
      public var §2E§:int;
      
      public var mName:String;
      
      public var §<[§:String;
      
      public function §>L§(param1:int, param2:String)
      {
         super();
         this.§2E§ = param1;
         this.mName = param2;
         this.§>7§ = new Array();
      }
      
      public function §6!h§(param1:§9!M§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§>7§[this.§>7§.length] = param1;
      }
      
      public function §4u§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§<[§ = param1;
         if(this.§2E§ == §5!O§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§>7§.length)
            {
               if((this.§>7§[_loc2_] as §9!M§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§>7§[_loc2_] as §9!M§).setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§>7§[_loc2_] as §9!M§).§]!,§ == §-U§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§>7§[_loc2_] as §9!M§).setComponentState(§-U§.§;!G§);
               }
               _loc2_++;
            }
         }
         if(this.§2E§ == §>!?§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§>7§.length)
            {
               if((this.§>7§[_loc2_] as §9!M§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§>7§[_loc2_] as §9!M§).§]!,§ == §-U§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§>7§[_loc2_] as §9!M§).setComponentState(§-U§.§;!G§);
                  }
                  else if((this.§>7§[_loc2_] as §9!M§).§]!,§ == §-U§.§;!G§)
                  {
                     if(this.§3"!§().length < this.§!!z§)
                     {
                        (this.§>7§[_loc2_] as §9!M§).setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§3"!§().length >= this.§!!z§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§>7§.length)
                  {
                     if((this.§>7§[_loc3_] as §9!M§).§]!,§ == §-U§.§;!G§)
                     {
                        (this.§>7§[_loc3_] as §9!M§).setComponentState(§-U§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§>7§.length)
                  {
                     if((this.§>7§[_loc3_] as §9!M§).§]!,§ == §-U§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§>7§[_loc3_] as §9!M§).setComponentState(§-U§.§;!G§);
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
         while(_loc3_ < this.§>7§.length)
         {
            (this.§>7§[_loc3_] as §9!M§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §^!$§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§>7§.length)
         {
            (this.§>7§[_loc1_] as §9!M§).setComponentState(§-U§.§;!G§);
            _loc1_++;
         }
      }
      
      public function § !g§(param1:Number) : void
      {
         this.§!!z§ = param1;
         if(param1 == 1)
         {
            this.§2E§ = §5!O§;
         }
         else
         {
            this.§2E§ = §>!?§;
         }
      }
      
      public function §&<§(param1:Array) : void
      {
         this.§^!$§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§4u§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §3"!§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§>7§.length)
         {
            if((this.§>7§[_loc2_] as §9!M§).§]!,§ == §-U§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§>7§[_loc2_] as §9!M§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
