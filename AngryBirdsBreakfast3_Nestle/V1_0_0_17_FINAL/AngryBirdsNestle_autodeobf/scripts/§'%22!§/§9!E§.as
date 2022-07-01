package §'"!§
{
   import §2u§.§]"%§;
   
   public class §9!E§
   {
      
      public static const §<X§:int = 0;
      
      public static const §[!S§:int = 1;
      
      public static const §;!P§:int = 2;
       
      
      public var §9-§:Array;
      
      public var §"!d§:int;
      
      public var §#!-§:int;
      
      public var mName:String;
      
      public var §'Y§:String;
      
      public function §9!E§(param1:int, param2:String)
      {
         super();
         this.§#!-§ = param1;
         this.mName = param2;
         this.§9-§ = new Array();
      }
      
      public function §&k§(param1:§]"%§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§9-§[this.§9-§.length] = param1;
      }
      
      public function §]!f§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§'Y§ = param1;
         if(this.§#!-§ == §<X§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9-§.length)
            {
               if((this.§9-§[_loc2_] as §]"%§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§9-§[_loc2_] as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§9-§[_loc2_] as §]"%§).§@!x§ == §-!g§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§9-§[_loc2_] as §]"%§).setComponentState(§-!g§.§+O§);
               }
               _loc2_++;
            }
         }
         if(this.§#!-§ == §;!P§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9-§.length)
            {
               if((this.§9-§[_loc2_] as §]"%§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§9-§[_loc2_] as §]"%§).§@!x§ == §-!g§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§9-§[_loc2_] as §]"%§).setComponentState(§-!g§.§+O§);
                  }
                  else if((this.§9-§[_loc2_] as §]"%§).§@!x§ == §-!g§.§+O§)
                  {
                     if(this.§"C§().length < this.§"!d§)
                     {
                        (this.§9-§[_loc2_] as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§"C§().length >= this.§"!d§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9-§.length)
                  {
                     if((this.§9-§[_loc3_] as §]"%§).§@!x§ == §-!g§.§+O§)
                     {
                        (this.§9-§[_loc3_] as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9-§.length)
                  {
                     if((this.§9-§[_loc3_] as §]"%§).§@!x§ == §-!g§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§9-§[_loc3_] as §]"%§).setComponentState(§-!g§.§+O§);
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
         while(_loc3_ < this.§9-§.length)
         {
            (this.§9-§[_loc3_] as §]"%§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §>""§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9-§.length)
         {
            (this.§9-§[_loc1_] as §]"%§).setComponentState(§-!g§.§+O§);
            _loc1_++;
         }
      }
      
      public function §4r§(param1:Number) : void
      {
         this.§"!d§ = param1;
         if(param1 == 1)
         {
            this.§#!-§ = §<X§;
         }
         else
         {
            this.§#!-§ = §;!P§;
         }
      }
      
      public function §1!a§(param1:Array) : void
      {
         this.§>""§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§]!f§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §"C§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9-§.length)
         {
            if((this.§9-§[_loc2_] as §]"%§).§@!x§ == §-!g§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§9-§[_loc2_] as §]"%§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
