package §-V§
{
   import §'G§.§false§;
   
   public class §,`§
   {
      
      public static const §1k§:int = 0;
      
      public static const §9S§:int = 1;
      
      public static const §>!V§:int = 2;
       
      
      public var §?n§:Array;
      
      public var §3a§:int;
      
      public var §`D§:int;
      
      public var mName:String;
      
      public var §&!9§:String;
      
      public function §,`§(param1:int, param2:String)
      {
         super();
         this.§`D§ = param1;
         this.mName = param2;
         this.§?n§ = new Array();
      }
      
      public function §>K§(param1:§false§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§?n§[this.§?n§.length] = param1;
      }
      
      public function §6!D§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§&!9§ = param1;
         if(this.§`D§ == §1k§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§?n§.length)
            {
               if((this.§?n§[_loc2_] as §false§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§?n§[_loc2_] as §false§).setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§?n§[_loc2_] as §false§).§<d§ == §9d§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§?n§[_loc2_] as §false§).setComponentState(§9d§.§%C§);
               }
               _loc2_++;
            }
         }
         if(this.§`D§ == §>!V§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§?n§.length)
            {
               if((this.§?n§[_loc2_] as §false§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§?n§[_loc2_] as §false§).§<d§ == §9d§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§?n§[_loc2_] as §false§).setComponentState(§9d§.§%C§);
                  }
                  else if((this.§?n§[_loc2_] as §false§).§<d§ == §9d§.§%C§)
                  {
                     if(this.§15§().length < this.§3a§)
                     {
                        (this.§?n§[_loc2_] as §false§).setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§15§().length >= this.§3a§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§?n§.length)
                  {
                     if((this.§?n§[_loc3_] as §false§).§<d§ == §9d§.§%C§)
                     {
                        (this.§?n§[_loc3_] as §false§).setComponentState(§9d§.§^#§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§?n§.length)
                  {
                     if((this.§?n§[_loc3_] as §false§).§<d§ == §9d§.§^#§)
                     {
                        (this.§?n§[_loc3_] as §false§).setComponentState(§9d§.§%C§);
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
         while(_loc2_ < this.§?n§.length)
         {
            (this.§?n§[_loc2_] as §false§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §^F§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§?n§.length)
         {
            (this.§?n§[_loc1_] as §false§).setComponentState(§9d§.§%C§);
            _loc1_++;
         }
      }
      
      public function §4z§(param1:Number) : void
      {
         this.§3a§ = param1;
         if(param1 == 1)
         {
            this.§`D§ = §1k§;
         }
         else
         {
            this.§`D§ = §>!V§;
         }
      }
      
      public function §]!<§(param1:Array) : void
      {
         this.§^F§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§6!D§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §15§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§?n§.length)
         {
            if((this.§?n§[_loc2_] as §false§).§<d§ == §9d§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§?n§[_loc2_] as §false§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
