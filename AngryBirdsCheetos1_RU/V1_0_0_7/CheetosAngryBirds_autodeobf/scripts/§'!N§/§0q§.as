package §'!N§
{
   import §;[§.§7!F§;
   
   public class §0q§
   {
      
      public static const §<!1§:int = 0;
      
      public static const §>2§:int = 1;
      
      public static const §'!=§:int = 2;
       
      
      public var §2^§:Array;
      
      public var §?6§:int;
      
      public var §#!S§:int;
      
      public var mName:String;
      
      public var §>e§:String;
      
      public function §0q§(param1:int, param2:String)
      {
         super();
         this.§#!S§ = param1;
         this.mName = param2;
         this.§2^§ = new Array();
      }
      
      public function §5!$§(param1:§7!F§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§2^§[this.§2^§.length] = param1;
      }
      
      public function §1!Z§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§>e§ = param1;
         if(this.§#!S§ == §<!1§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§2^§.length)
            {
               if((this.§2^§[_loc2_] as §7!F§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§2^§[_loc2_] as §7!F§).setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§2^§[_loc2_] as §7!F§).§4!O§ == §71§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§2^§[_loc2_] as §7!F§).setComponentState(§71§.§69§);
               }
               _loc2_++;
            }
         }
         if(this.§#!S§ == §'!=§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§2^§.length)
            {
               if((this.§2^§[_loc2_] as §7!F§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§2^§[_loc2_] as §7!F§).§4!O§ == §71§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§2^§[_loc2_] as §7!F§).setComponentState(§71§.§69§);
                  }
                  else if((this.§2^§[_loc2_] as §7!F§).§4!O§ == §71§.§69§)
                  {
                     if(this.§5!L§().length < this.§?6§)
                     {
                        (this.§2^§[_loc2_] as §7!F§).setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§5!L§().length >= this.§?6§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§2^§.length)
                  {
                     if((this.§2^§[_loc3_] as §7!F§).§4!O§ == §71§.§69§)
                     {
                        (this.§2^§[_loc3_] as §7!F§).setComponentState(§71§.§'!,§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§2^§.length)
                  {
                     if((this.§2^§[_loc3_] as §7!F§).§4!O§ == §71§.§'!,§)
                     {
                        (this.§2^§[_loc3_] as §7!F§).setComponentState(§71§.§69§);
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
         while(_loc2_ < this.§2^§.length)
         {
            (this.§2^§[_loc2_] as §7!F§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §5^§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§2^§.length)
         {
            (this.§2^§[_loc1_] as §7!F§).setComponentState(§71§.§69§);
            _loc1_++;
         }
      }
      
      public function §6^§(param1:Number) : void
      {
         this.§?6§ = param1;
         if(param1 == 1)
         {
            this.§#!S§ = §<!1§;
         }
         else
         {
            this.§#!S§ = §'!=§;
         }
      }
      
      public function §]=§(param1:Array) : void
      {
         this.§5^§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§1!Z§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §5!L§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§2^§.length)
         {
            if((this.§2^§[_loc2_] as §7!F§).§4!O§ == §71§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§2^§[_loc2_] as §7!F§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
