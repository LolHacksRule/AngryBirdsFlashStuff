package §@-§
{
   import §,!C§.§?!C§;
   
   public class §#W§
   {
      
      public static const §`!"§:int = 0;
      
      public static const §]!,§:int = 1;
      
      public static const §0M§:int = 2;
       
      
      public var §+!;§:Array;
      
      public var §#u§:int;
      
      public var §8!4§:int;
      
      public var mName:String;
      
      public var §#!J§:String;
      
      public function §#W§(param1:int, param2:String)
      {
         super();
         this.§8!4§ = param1;
         this.mName = param2;
         this.§+!;§ = new Array();
      }
      
      public function §&!p§(param1:§?!C§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§+!;§[this.§+!;§.length] = param1;
      }
      
      public function §1!V§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§#!J§ = param1;
         if(this.§8!4§ == §`!"§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§+!;§.length)
            {
               if((this.§+!;§[_loc2_] as §?!C§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§+!;§[_loc2_] as §?!C§).setComponentState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§+!;§[_loc2_] as §?!C§).§""§ == § x§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§+!;§[_loc2_] as §?!C§).setComponentState(§ x§.§%!"§);
               }
               _loc2_++;
            }
         }
         if(this.§8!4§ == §0M§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§+!;§.length)
            {
               if((this.§+!;§[_loc2_] as §?!C§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§+!;§[_loc2_] as §?!C§).§""§ == § x§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§+!;§[_loc2_] as §?!C§).setComponentState(§ x§.§%!"§);
                  }
                  else if((this.§+!;§[_loc2_] as §?!C§).§""§ == § x§.§%!"§)
                  {
                     if(this.§%!5§().length < this.§#u§)
                     {
                        (this.§+!;§[_loc2_] as §?!C§).setComponentState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§%!5§().length >= this.§#u§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§+!;§.length)
                  {
                     if((this.§+!;§[_loc3_] as §?!C§).§""§ == § x§.§%!"§)
                     {
                        (this.§+!;§[_loc3_] as §?!C§).setComponentState(§ x§.§;g§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§+!;§.length)
                  {
                     if((this.§+!;§[_loc3_] as §?!C§).§""§ == § x§.§;g§)
                     {
                        (this.§+!;§[_loc3_] as §?!C§).setComponentState(§ x§.§%!"§);
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
         while(_loc2_ < this.§+!;§.length)
         {
            (this.§+!;§[_loc2_] as §?!C§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §5!X§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!;§.length)
         {
            (this.§+!;§[_loc1_] as §?!C§).setComponentState(§ x§.§%!"§);
            _loc1_++;
         }
      }
      
      public function §2!_§(param1:Number) : void
      {
         this.§#u§ = param1;
         if(param1 == 1)
         {
            this.§8!4§ = §`!"§;
         }
         else
         {
            this.§8!4§ = §0M§;
         }
      }
      
      public function §@!G§(param1:Array) : void
      {
         this.§5!X§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§1!V§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §%!5§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!;§.length)
         {
            if((this.§+!;§[_loc2_] as §?!C§).§""§ == § x§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§+!;§[_loc2_] as §?!C§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
