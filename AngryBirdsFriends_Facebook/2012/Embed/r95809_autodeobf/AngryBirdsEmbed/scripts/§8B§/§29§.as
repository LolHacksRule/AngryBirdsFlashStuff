package §8B§
{
   import §[V§.§1;§;
   
   public class §29§
   {
      
      public static const §%0§:int = 0;
      
      public static const §7%§:int = 1;
      
      public static const §^!4§:int = 2;
       
      
      public var §%Y§:Array;
      
      public var § !§:int;
      
      public var §@M§:int;
      
      public var mName:String;
      
      public var §`7§:String;
      
      public function §29§(param1:int, param2:String)
      {
         super();
         this.§@M§ = param1;
         this.mName = param2;
         this.§%Y§ = new Array();
      }
      
      public function §2F§(param1:§1;§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§%Y§[this.§%Y§.length] = param1;
      }
      
      public function §'!3§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§`7§ = param1;
         if(this.§@M§ == §%0§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§%Y§.length)
            {
               if((this.§%Y§[_loc2_] as §1;§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§%Y§[_loc2_] as §1;§).setComponentState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§%Y§[_loc2_] as §1;§).§]v§ == §+;§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§%Y§[_loc2_] as §1;§).setComponentState(§+;§.§"U§);
               }
               _loc2_++;
            }
         }
         if(this.§@M§ == §^!4§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§%Y§.length)
            {
               if((this.§%Y§[_loc2_] as §1;§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§%Y§[_loc2_] as §1;§).§]v§ == §+;§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§%Y§[_loc2_] as §1;§).setComponentState(§+;§.§"U§);
                  }
                  else if((this.§%Y§[_loc2_] as §1;§).§]v§ == §+;§.§"U§)
                  {
                     if(this.§^f§().length < this.§ !§)
                     {
                        (this.§%Y§[_loc2_] as §1;§).setComponentState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§^f§().length >= this.§ !§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§%Y§.length)
                  {
                     if((this.§%Y§[_loc3_] as §1;§).§]v§ == §+;§.§"U§)
                     {
                        (this.§%Y§[_loc3_] as §1;§).setComponentState(§+;§.§!!#§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§%Y§.length)
                  {
                     if((this.§%Y§[_loc3_] as §1;§).§]v§ == §+;§.§!!#§)
                     {
                        (this.§%Y§[_loc3_] as §1;§).setComponentState(§+;§.§"U§);
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
         while(_loc2_ < this.§%Y§.length)
         {
            (this.§%Y§[_loc2_] as §1;§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §13§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§%Y§.length)
         {
            (this.§%Y§[_loc1_] as §1;§).setComponentState(§+;§.§"U§);
            _loc1_++;
         }
      }
      
      public function §<7§(param1:Number) : void
      {
         this.§ !§ = param1;
         if(param1 == 1)
         {
            this.§@M§ = §%0§;
         }
         else
         {
            this.§@M§ = §^!4§;
         }
      }
      
      public function §[J§(param1:Array) : void
      {
         this.§13§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§'!3§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §^f§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%Y§.length)
         {
            if((this.§%Y§[_loc2_] as §1;§).§]v§ == §+;§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§%Y§[_loc2_] as §1;§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
