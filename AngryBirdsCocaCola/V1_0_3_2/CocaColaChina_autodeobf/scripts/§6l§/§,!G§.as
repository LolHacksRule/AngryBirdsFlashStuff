package §6l§
{
   import §'b§.§0!D§;
   
   public class §,!G§
   {
      
      public static const §-!'§:int = 0;
      
      public static const §2M§:int = 1;
      
      public static const §+3§:int = 2;
       
      
      public var §#$§:Array;
      
      public var §8n§:int;
      
      public var §^;§:int;
      
      public var mName:String;
      
      public var §>j§:String;
      
      public function §,!G§(param1:int, param2:String)
      {
         super();
         this.§^;§ = param1;
         this.mName = param2;
         this.§#$§ = new Array();
      }
      
      public function §`F§(param1:§0!D§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§#$§[this.§#$§.length] = param1;
      }
      
      public function §9]§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§>j§ = param1;
         if(this.§^;§ == §-!'§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§#$§.length)
            {
               if((this.§#$§[_loc2_] as §0!D§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§#$§[_loc2_] as §0!D§).setComponentState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§#$§[_loc2_] as §0!D§).§];§ == § l§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§#$§[_loc2_] as §0!D§).setComponentState(§ l§.§6!b§);
               }
               _loc2_++;
            }
         }
         if(this.§^;§ == §+3§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§#$§.length)
            {
               if((this.§#$§[_loc2_] as §0!D§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§#$§[_loc2_] as §0!D§).§];§ == § l§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§#$§[_loc2_] as §0!D§).setComponentState(§ l§.§6!b§);
                  }
                  else if((this.§#$§[_loc2_] as §0!D§).§];§ == § l§.§6!b§)
                  {
                     if(this.§!!Y§().length < this.§8n§)
                     {
                        (this.§#$§[_loc2_] as §0!D§).setComponentState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§!!Y§().length >= this.§8n§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§#$§.length)
                  {
                     if((this.§#$§[_loc3_] as §0!D§).§];§ == § l§.§6!b§)
                     {
                        (this.§#$§[_loc3_] as §0!D§).setComponentState(§ l§.§1'§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§#$§.length)
                  {
                     if((this.§#$§[_loc3_] as §0!D§).§];§ == § l§.§1'§)
                     {
                        (this.§#$§[_loc3_] as §0!D§).setComponentState(§ l§.§6!b§);
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
         while(_loc2_ < this.§#$§.length)
         {
            (this.§#$§[_loc2_] as §0!D§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function § m§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§#$§.length)
         {
            (this.§#$§[_loc1_] as §0!D§).setComponentState(§ l§.§6!b§);
            _loc1_++;
         }
      }
      
      public function §#!@§(param1:Number) : void
      {
         this.§8n§ = param1;
         if(param1 == 1)
         {
            this.§^;§ = §-!'§;
         }
         else
         {
            this.§^;§ = §+3§;
         }
      }
      
      public function §6w§(param1:Array) : void
      {
         this.§ m§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§9]§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §!!Y§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#$§.length)
         {
            if((this.§#$§[_loc2_] as §0!D§).§];§ == § l§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§#$§[_loc2_] as §0!D§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
