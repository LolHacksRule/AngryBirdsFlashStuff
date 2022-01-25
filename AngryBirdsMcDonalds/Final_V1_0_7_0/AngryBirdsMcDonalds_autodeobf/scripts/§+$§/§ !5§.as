package §+$§
{
   import §[h§.§49§;
   
   public class § !5§
   {
      
      public static const §@?§:int = 0;
      
      public static const §%u§:int = 1;
      
      public static const §>!3§:int = 2;
       
      
      public var §5d§:Array;
      
      public var §<!6§:int;
      
      public var §4!O§:int;
      
      public var mName:String;
      
      public var §^L§:String;
      
      public function § !5§(param1:int, param2:String)
      {
         super();
         this.§4!O§ = param1;
         this.mName = param2;
         this.§5d§ = new Array();
      }
      
      public function §%!F§(param1:§49§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§5d§[this.§5d§.length] = param1;
      }
      
      public function §8!h§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§^L§ = param1;
         if(this.§4!O§ == §@?§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§5d§.length)
            {
               if((this.§5d§[_loc2_] as §49§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§5d§[_loc2_] as §49§).setComponentState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§5d§[_loc2_] as §49§).§ 4§ == §"!p§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§5d§[_loc2_] as §49§).setComponentState(§"!p§.§`!Q§);
               }
               _loc2_++;
            }
         }
         if(this.§4!O§ == §>!3§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§5d§.length)
            {
               if((this.§5d§[_loc2_] as §49§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§5d§[_loc2_] as §49§).§ 4§ == §"!p§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§5d§[_loc2_] as §49§).setComponentState(§"!p§.§`!Q§);
                  }
                  else if((this.§5d§[_loc2_] as §49§).§ 4§ == §"!p§.§`!Q§)
                  {
                     if(this.§#6§().length < this.§<!6§)
                     {
                        (this.§5d§[_loc2_] as §49§).setComponentState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§#6§().length >= this.§<!6§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§5d§.length)
                  {
                     if((this.§5d§[_loc3_] as §49§).§ 4§ == §"!p§.§`!Q§)
                     {
                        (this.§5d§[_loc3_] as §49§).setComponentState(§"!p§.§>!W§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§5d§.length)
                  {
                     if((this.§5d§[_loc3_] as §49§).§ 4§ == §"!p§.§>!W§)
                     {
                        (this.§5d§[_loc3_] as §49§).setComponentState(§"!p§.§`!Q§);
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
         while(_loc2_ < this.§5d§.length)
         {
            (this.§5d§[_loc2_] as §49§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §'!7§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§5d§.length)
         {
            (this.§5d§[_loc1_] as §49§).setComponentState(§"!p§.§`!Q§);
            _loc1_++;
         }
      }
      
      public function §1s§(param1:Number) : void
      {
         this.§<!6§ = param1;
         if(param1 == 1)
         {
            this.§4!O§ = §@?§;
         }
         else
         {
            this.§4!O§ = §>!3§;
         }
      }
      
      public function §"!o§(param1:Array) : void
      {
         this.§'!7§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§8!h§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §#6§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§5d§.length)
         {
            if((this.§5d§[_loc2_] as §49§).§ 4§ == §"!p§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§5d§[_loc2_] as §49§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
