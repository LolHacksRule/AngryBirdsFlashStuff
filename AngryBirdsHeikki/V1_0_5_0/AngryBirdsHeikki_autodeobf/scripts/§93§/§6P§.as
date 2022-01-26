package §93§
{
   import §=!c§.§-A§;
   
   public class §6P§
   {
      
      public static const §"!c§:int = 0;
      
      public static const §@!6§:int = 1;
      
      public static const §=z§:int = 2;
       
      
      public var §?K§:Array;
      
      public var §,'§:int;
      
      public var §'a§:int;
      
      public var mName:String;
      
      public var §-S§:String;
      
      public function §6P§(param1:int, param2:String)
      {
         super();
         this.§'a§ = param1;
         this.mName = param2;
         this.§?K§ = new Array();
      }
      
      public function §0c§(param1:§-A§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§?K§[this.§?K§.length] = param1;
      }
      
      public function §7e§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§-S§ = param1;
         if(this.§'a§ == §"!c§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§?K§.length)
            {
               if((this.§?K§[_loc2_] as §-A§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§?K§[_loc2_] as §-A§).setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§?K§[_loc2_] as §-A§).§ P§ == §?t§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§?K§[_loc2_] as §-A§).setComponentState(§?t§.§5!0§);
               }
               _loc2_++;
            }
         }
         if(this.§'a§ == §=z§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§?K§.length)
            {
               if((this.§?K§[_loc2_] as §-A§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§?K§[_loc2_] as §-A§).§ P§ == §?t§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§?K§[_loc2_] as §-A§).setComponentState(§?t§.§5!0§);
                  }
                  else if((this.§?K§[_loc2_] as §-A§).§ P§ == §?t§.§5!0§)
                  {
                     if(this.§,2§().length < this.§,'§)
                     {
                        (this.§?K§[_loc2_] as §-A§).setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§,2§().length >= this.§,'§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§?K§.length)
                  {
                     if((this.§?K§[_loc3_] as §-A§).§ P§ == §?t§.§5!0§)
                     {
                        (this.§?K§[_loc3_] as §-A§).setComponentState(§?t§.§@G§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§?K§.length)
                  {
                     if((this.§?K§[_loc3_] as §-A§).§ P§ == §?t§.§@G§)
                     {
                        (this.§?K§[_loc3_] as §-A§).setComponentState(§?t§.§5!0§);
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
         while(_loc2_ < this.§?K§.length)
         {
            (this.§?K§[_loc2_] as §-A§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §6M§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§?K§.length)
         {
            (this.§?K§[_loc1_] as §-A§).setComponentState(§?t§.§5!0§);
            _loc1_++;
         }
      }
      
      public function §@3§(param1:Number) : void
      {
         this.§,'§ = param1;
         if(param1 == 1)
         {
            this.§'a§ = §"!c§;
         }
         else
         {
            this.§'a§ = §=z§;
         }
      }
      
      public function §=d§(param1:Array) : void
      {
         this.§6M§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§7e§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §,2§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§?K§.length)
         {
            if((this.§?K§[_loc2_] as §-A§).§ P§ == §?t§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§?K§[_loc2_] as §-A§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
