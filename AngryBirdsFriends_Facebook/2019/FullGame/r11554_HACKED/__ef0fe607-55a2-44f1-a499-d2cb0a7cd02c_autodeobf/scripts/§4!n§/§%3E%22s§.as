package §4!n§
{
   import §5!$§.§"S§;
   
   public class §>"s§
   {
      
      public static const §#$'§:int = 0;
      
      public static const §%!n§:int = 1;
      
      public static const §`Y§:int = 2;
       
      
      public var §1#M§:Array;
      
      public var §@"_§:int;
      
      public var §=$?§:int;
      
      public var §-!O§:String;
      
      public var §#"m§:String;
      
      public function §>"s§(param1:int, param2:String)
      {
         super();
         this.§=$?§ = param1;
         this.§-!O§ = param2;
         this.§1#M§ = new Array();
      }
      
      public function §0#9§(param1:§"S§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§1#M§[this.§1#M§.length] = param1;
      }
      
      public function §'"g§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.§#"m§ = param1;
         var _loc2_:String = param1.toUpperCase();
         if(this.§=$?§ == §#$'§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§1#M§.length)
            {
               if((this.§1#M§[_loc3_] as §"S§).upperCaseName == _loc2_)
               {
                  (this.§1#M§[_loc3_] as §"S§).setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§1#M§[_loc3_] as §"S§).§9!#§ == §'!V§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§1#M§[_loc3_] as §"S§).setComponentState(§'!V§.§,[§);
               }
               _loc3_++;
            }
         }
         if(this.§=$?§ == §`Y§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§1#M§.length)
            {
               if((this.§1#M§[_loc3_] as §"S§).upperCaseName == _loc2_)
               {
                  if((this.§1#M§[_loc3_] as §"S§).§9!#§ == §'!V§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§1#M§[_loc3_] as §"S§).setComponentState(§'!V§.§,[§);
                  }
                  else if((this.§1#M§[_loc3_] as §"S§).§9!#§ == §'!V§.§,[§)
                  {
                     if(this.§^!#§().length < this.§@"_§)
                     {
                        (this.§1#M§[_loc3_] as §"S§).setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§^!#§().length >= this.§@"_§)
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§1#M§.length)
                  {
                     if((this.§1#M§[_loc4_] as §"S§).§9!#§ == §'!V§.§,[§)
                     {
                        (this.§1#M§[_loc4_] as §"S§).setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
                     }
                     _loc4_++;
                  }
               }
               else
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§1#M§.length)
                  {
                     if((this.§1#M§[_loc4_] as §"S§).§9!#§ == §'!V§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§1#M§[_loc4_] as §"S§).setComponentState(§'!V§.§,[§);
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
         while(_loc3_ < this.§1#M§.length)
         {
            (this.§1#M§[_loc3_] as §"S§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §8f§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§1#M§.length)
         {
            (this.§1#M§[_loc1_] as §"S§).setComponentState(§'!V§.§,[§);
            _loc1_++;
         }
      }
      
      public function §>!#§(param1:Number) : void
      {
         this.§@"_§ = param1;
         if(param1 == 1)
         {
            this.§=$?§ = §#$'§;
         }
         else
         {
            this.§=$?§ = §`Y§;
         }
      }
      
      public function §;"a§(param1:Array) : void
      {
         this.§8f§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§'"g§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §^!#§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1#M§.length)
         {
            if((this.§1#M§[_loc2_] as §"S§).§9!#§ == §'!V§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§1#M§[_loc2_] as §"S§).name);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
