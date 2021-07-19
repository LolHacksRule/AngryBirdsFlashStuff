package §;"Y§
{
   import §+D§.§^"m§;
   
   public class §]!i§
   {
      
      public static const §7"J§:int = 0;
      
      public static const §8#V§:int = 1;
      
      public static const §9w§:int = 2;
       
      
      public var §]-§:Array;
      
      public var §`&§:int;
      
      public var §;"-§:int;
      
      public var mName:String;
      
      public var §%"=§:String;
      
      public function §]!i§(param1:int, param2:String)
      {
         super();
         this.§;"-§ = param1;
         this.mName = param2;
         this.§]-§ = new Array();
      }
      
      public function addButton(param1:§^"m§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§]-§[this.§]-§.length] = param1;
      }
      
      public function §]"K§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§%"=§ = param1;
         if(this.§;"-§ == §7"J§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§]-§.length)
            {
               if((this.§]-§[_loc2_] as §^"m§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§]-§[_loc2_] as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§]-§[_loc2_] as §^"m§).§^'§ == §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§]-§[_loc2_] as §^"m§).setComponentState(§1"z§.§4"o§);
               }
               _loc2_++;
            }
         }
         if(this.§;"-§ == §9w§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§]-§.length)
            {
               if((this.§]-§[_loc2_] as §^"m§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§]-§[_loc2_] as §^"m§).§^'§ == §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§]-§[_loc2_] as §^"m§).setComponentState(§1"z§.§4"o§);
                  }
                  else if((this.§]-§[_loc2_] as §^"m§).§^'§ == §1"z§.§4"o§)
                  {
                     if(this.§+q§().length < this.§`&§)
                     {
                        (this.§]-§[_loc2_] as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§+q§().length >= this.§`&§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§]-§.length)
                  {
                     if((this.§]-§[_loc3_] as §^"m§).§^'§ == §1"z§.§4"o§)
                     {
                        (this.§]-§[_loc3_] as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§]-§.length)
                  {
                     if((this.§]-§[_loc3_] as §^"m§).§^'§ == §1"z§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§]-§[_loc3_] as §^"m§).setComponentState(§1"z§.§4"o§);
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
         while(_loc3_ < this.§]-§.length)
         {
            (this.§]-§[_loc3_] as §^"m§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §1!@§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§]-§.length)
         {
            (this.§]-§[_loc1_] as §^"m§).setComponentState(§1"z§.§4"o§);
            _loc1_++;
         }
      }
      
      public function §["'§(param1:Number) : void
      {
         this.§`&§ = param1;
         if(param1 == 1)
         {
            this.§;"-§ = §7"J§;
         }
         else
         {
            this.§;"-§ = §9w§;
         }
      }
      
      public function §8"w§(param1:Array) : void
      {
         this.§1!@§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§]"K§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §+q§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]-§.length)
         {
            if((this.§]-§[_loc2_] as §^"m§).§^'§ == §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§]-§[_loc2_] as §^"m§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
