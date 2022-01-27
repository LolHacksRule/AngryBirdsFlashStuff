package §5f§
{
   import §=u§.§1r§;
   
   public class §&!F§
   {
      
      public static const §<!<§:int = 0;
      
      public static const §9!O§:int = 1;
      
      public static const §"!?§:int = 2;
       
      
      public var §9!L§:Array;
      
      public var §@6§:int;
      
      public var §5L§:int;
      
      public var mName:String;
      
      public var §[! §:String;
      
      public function §&!F§(param1:int, param2:String)
      {
         super();
         this.§5L§ = param1;
         this.mName = param2;
         this.§9!L§ = new Array();
      }
      
      public function §2!D§(param1:§1r§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§9!L§[this.§9!L§.length] = param1;
      }
      
      public function §33§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§[! § = param1;
         if(this.§5L§ == §<!<§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!L§.length)
            {
               if((this.§9!L§[_loc2_] as §1r§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§9!L§[_loc2_] as §1r§).setComponentState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§9!L§[_loc2_] as §1r§).§4!!§ == §=;§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§9!L§[_loc2_] as §1r§).setComponentState(§=;§.§"]§);
               }
               _loc2_++;
            }
         }
         if(this.§5L§ == §"!?§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!L§.length)
            {
               if((this.§9!L§[_loc2_] as §1r§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§9!L§[_loc2_] as §1r§).§4!!§ == §=;§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§9!L§[_loc2_] as §1r§).setComponentState(§=;§.§"]§);
                  }
                  else if((this.§9!L§[_loc2_] as §1r§).§4!!§ == §=;§.§"]§)
                  {
                     if(this.§2j§().length < this.§@6§)
                     {
                        (this.§9!L§[_loc2_] as §1r§).setComponentState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§2j§().length >= this.§@6§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!L§.length)
                  {
                     if((this.§9!L§[_loc3_] as §1r§).§4!!§ == §=;§.§"]§)
                     {
                        (this.§9!L§[_loc3_] as §1r§).setComponentState(§=;§.§+!0§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!L§.length)
                  {
                     if((this.§9!L§[_loc3_] as §1r§).§4!!§ == §=;§.§+!0§)
                     {
                        (this.§9!L§[_loc3_] as §1r§).setComponentState(§=;§.§"]§);
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
         while(_loc2_ < this.§9!L§.length)
         {
            (this.§9!L§[_loc2_] as §1r§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §&7§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!L§.length)
         {
            (this.§9!L§[_loc1_] as §1r§).setComponentState(§=;§.§"]§);
            _loc1_++;
         }
      }
      
      public function §-!5§(param1:Number) : void
      {
         this.§@6§ = param1;
         if(param1 == 1)
         {
            this.§5L§ = §<!<§;
         }
         else
         {
            this.§5L§ = §"!?§;
         }
      }
      
      public function §%8§(param1:Array) : void
      {
         this.§&7§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§33§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §2j§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!L§.length)
         {
            if((this.§9!L§[_loc2_] as §1r§).§4!!§ == §=;§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§9!L§[_loc2_] as §1r§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
