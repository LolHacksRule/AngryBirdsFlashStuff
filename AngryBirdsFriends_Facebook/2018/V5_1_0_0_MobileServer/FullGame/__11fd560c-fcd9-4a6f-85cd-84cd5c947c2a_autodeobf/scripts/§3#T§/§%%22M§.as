package §3#T§
{
   import §<h§.§>"0§;
   
   public class §%"M§
   {
      
      public static const §@$1§:int = 0;
      
      public static const §^"a§:int = 1;
      
      public static const §;"O§:int = 2;
       
      
      public var §#!7§:Array;
      
      public var §##2§:int;
      
      public var §"#7§:int;
      
      public var §=q§:String;
      
      public var §""v§:String;
      
      public function §%"M§(param1:int, param2:String)
      {
         super();
         this.§"#7§ = param1;
         this.§=q§ = param2;
         this.§#!7§ = new Array();
      }
      
      public function §4!a§(param1:§>"0§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§#!7§[this.§#!7§.length] = param1;
      }
      
      public function §^$"§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.§""v§ = param1;
         var _loc2_:String = param1.toUpperCase();
         if(this.§"#7§ == §@$1§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§#!7§.length)
            {
               if((this.§#!7§[_loc3_] as §>"0§).upperCaseName == _loc2_)
               {
                  (this.§#!7§[_loc3_] as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§#!7§[_loc3_] as §>"0§).§2!t§ == §,#[§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§#!7§[_loc3_] as §>"0§).setComponentState(§,#[§.§1$,§);
               }
               _loc3_++;
            }
         }
         if(this.§"#7§ == §;"O§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§#!7§.length)
            {
               if((this.§#!7§[_loc3_] as §>"0§).upperCaseName == _loc2_)
               {
                  if((this.§#!7§[_loc3_] as §>"0§).§2!t§ == §,#[§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§#!7§[_loc3_] as §>"0§).setComponentState(§,#[§.§1$,§);
                  }
                  else if((this.§#!7§[_loc3_] as §>"0§).§2!t§ == §,#[§.§1$,§)
                  {
                     if(this.§%"m§().length < this.§##2§)
                     {
                        (this.§#!7§[_loc3_] as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§%"m§().length >= this.§##2§)
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§#!7§.length)
                  {
                     if((this.§#!7§[_loc4_] as §>"0§).§2!t§ == §,#[§.§1$,§)
                     {
                        (this.§#!7§[_loc4_] as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
                     }
                     _loc4_++;
                  }
               }
               else
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§#!7§.length)
                  {
                     if((this.§#!7§[_loc4_] as §>"0§).§2!t§ == §,#[§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§#!7§[_loc4_] as §>"0§).setComponentState(§,#[§.§1$,§);
                     }
                     _loc4_++;
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§#!7§.length)
         {
            (this.§#!7§[_loc3_] as §>"0§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §,#c§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!7§.length)
         {
            (this.§#!7§[_loc1_] as §>"0§).setComponentState(§,#[§.§1$,§);
            _loc1_++;
         }
      }
      
      public function §-!g§(param1:Number) : void
      {
         this.§##2§ = param1;
         if(param1 == 1)
         {
            this.§"#7§ = §@$1§;
         }
         else
         {
            this.§"#7§ = §;"O§;
         }
      }
      
      public function §["H§(param1:Array) : void
      {
         this.§,#c§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§^$"§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §%"m§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!7§.length)
         {
            if((this.§#!7§[_loc2_] as §>"0§).§2!t§ == §,#[§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§#!7§[_loc2_] as §>"0§).name);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
