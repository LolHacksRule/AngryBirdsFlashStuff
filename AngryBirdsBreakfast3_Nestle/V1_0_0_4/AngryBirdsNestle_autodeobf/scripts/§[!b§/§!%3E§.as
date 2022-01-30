package §[!b§
{
   import §@#§.§4!O§;
   
   public class §!>§
   {
      
      public static const §8G§:int = 0;
      
      public static const §%!,§:int = 1;
      
      public static const §<!T§:int = 2;
       
      
      public var §6t§:Array;
      
      public var §?0§:int;
      
      public var §1!p§:int;
      
      public var mName:String;
      
      public var §=O§:String;
      
      public function §!>§(param1:int, param2:String)
      {
         super();
         this.§1!p§ = param1;
         this.mName = param2;
         this.§6t§ = new Array();
      }
      
      public function §[`§(param1:§4!O§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§6t§[this.§6t§.length] = param1;
      }
      
      public function §3"$§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§=O§ = param1;
         if(this.§1!p§ == §8G§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§6t§.length)
            {
               if((this.§6t§[_loc2_] as §4!O§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§6t§[_loc2_] as §4!O§).setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§6t§[_loc2_] as §4!O§).§3![§ == §]"-§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§6t§[_loc2_] as §4!O§).setComponentState(§]"-§.§2"0§);
               }
               _loc2_++;
            }
         }
         if(this.§1!p§ == §<!T§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§6t§.length)
            {
               if((this.§6t§[_loc2_] as §4!O§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§6t§[_loc2_] as §4!O§).§3![§ == §]"-§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§6t§[_loc2_] as §4!O§).setComponentState(§]"-§.§2"0§);
                  }
                  else if((this.§6t§[_loc2_] as §4!O§).§3![§ == §]"-§.§2"0§)
                  {
                     if(this.§]",§().length < this.§?0§)
                     {
                        (this.§6t§[_loc2_] as §4!O§).setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§]",§().length >= this.§?0§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§6t§.length)
                  {
                     if((this.§6t§[_loc3_] as §4!O§).§3![§ == §]"-§.§2"0§)
                     {
                        (this.§6t§[_loc3_] as §4!O§).setComponentState(§]"-§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§6t§.length)
                  {
                     if((this.§6t§[_loc3_] as §4!O§).§3![§ == §]"-§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§6t§[_loc3_] as §4!O§).setComponentState(§]"-§.§2"0§);
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
         while(_loc3_ < this.§6t§.length)
         {
            (this.§6t§[_loc3_] as §4!O§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §0"§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§6t§.length)
         {
            (this.§6t§[_loc1_] as §4!O§).setComponentState(§]"-§.§2"0§);
            _loc1_++;
         }
      }
      
      public function §#!%§(param1:Number) : void
      {
         this.§?0§ = param1;
         if(param1 == 1)
         {
            this.§1!p§ = §8G§;
         }
         else
         {
            this.§1!p§ = §<!T§;
         }
      }
      
      public function §#Z§(param1:Array) : void
      {
         this.§0"§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§3"$§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §]",§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§6t§.length)
         {
            if((this.§6t§[_loc2_] as §4!O§).§3![§ == §]"-§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§6t§[_loc2_] as §4!O§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
