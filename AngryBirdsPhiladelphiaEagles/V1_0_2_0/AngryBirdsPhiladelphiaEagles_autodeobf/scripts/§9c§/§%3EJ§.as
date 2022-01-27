package §9c§
{
   import §=!H§.§=<§;
   
   public class §>J§
   {
      
      public static const §"!?§:int = 0;
      
      public static const §4L§:int = 1;
      
      public static const §%c§:int = 2;
       
      
      public var §9!3§:Array;
      
      public var §<W§:int;
      
      public var §^U§:int;
      
      public var mName:String;
      
      public var §%B§:String;
      
      public function §>J§(param1:int, param2:String)
      {
         super();
         this.§^U§ = param1;
         this.mName = param2;
         this.§9!3§ = new Array();
      }
      
      public function §1;§(param1:§=<§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§9!3§[this.§9!3§.length] = param1;
      }
      
      public function §-!!§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§%B§ = param1;
         if(this.§^U§ == §"!?§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!3§.length)
            {
               if((this.§9!3§[_loc2_] as §=<§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§9!3§[_loc2_] as §=<§).setComponentState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§9!3§[_loc2_] as §=<§).§33§ == §6P§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§9!3§[_loc2_] as §=<§).setComponentState(§6P§.§@!=§);
               }
               _loc2_++;
            }
         }
         if(this.§^U§ == §%c§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!3§.length)
            {
               if((this.§9!3§[_loc2_] as §=<§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§9!3§[_loc2_] as §=<§).§33§ == §6P§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§9!3§[_loc2_] as §=<§).setComponentState(§6P§.§@!=§);
                  }
                  else if((this.§9!3§[_loc2_] as §=<§).§33§ == §6P§.§@!=§)
                  {
                     if(this.§7!"§().length < this.§<W§)
                     {
                        (this.§9!3§[_loc2_] as §=<§).setComponentState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§7!"§().length >= this.§<W§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!3§.length)
                  {
                     if((this.§9!3§[_loc3_] as §=<§).§33§ == §6P§.§@!=§)
                     {
                        (this.§9!3§[_loc3_] as §=<§).setComponentState(§6P§.§^!<§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!3§.length)
                  {
                     if((this.§9!3§[_loc3_] as §=<§).§33§ == §6P§.§^!<§)
                     {
                        (this.§9!3§[_loc3_] as §=<§).setComponentState(§6P§.§@!=§);
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
         while(_loc2_ < this.§9!3§.length)
         {
            (this.§9!3§[_loc2_] as §=<§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §2!-§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!3§.length)
         {
            (this.§9!3§[_loc1_] as §=<§).setComponentState(§6P§.§@!=§);
            _loc1_++;
         }
      }
      
      public function § var§(param1:Number) : void
      {
         this.§<W§ = param1;
         if(param1 == 1)
         {
            this.§^U§ = §"!?§;
         }
         else
         {
            this.§^U§ = §%c§;
         }
      }
      
      public function §@!H§(param1:Array) : void
      {
         this.§2!-§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§-!!§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §7!"§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!3§.length)
         {
            if((this.§9!3§[_loc2_] as §=<§).§33§ == §6P§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§9!3§[_loc2_] as §=<§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
