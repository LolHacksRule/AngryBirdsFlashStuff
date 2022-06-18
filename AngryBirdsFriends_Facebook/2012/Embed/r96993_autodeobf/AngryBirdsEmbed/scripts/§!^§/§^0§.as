package §!^§
{
   import §-!'§.§;f§;
   
   public class §^0§
   {
      
      public static const §^[§:int = 0;
      
      public static const §+"§:int = 1;
      
      public static const §83§:int = 2;
       
      
      public var §%U§:Array;
      
      public var §'=§:int;
      
      public var §3]§:int;
      
      public var mName:String;
      
      public var §2&§:String;
      
      public function §^0§(param1:int, param2:String)
      {
         super();
         this.§3]§ = param1;
         this.mName = param2;
         this.§%U§ = new Array();
      }
      
      public function §5f§(param1:§;f§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§%U§[this.§%U§.length] = param1;
      }
      
      public function §+x§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§2&§ = param1;
         if(this.§3]§ == §^[§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§%U§.length)
            {
               if((this.§%U§[_loc2_] as §;f§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§%U§[_loc2_] as §;f§).setComponentState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§%U§[_loc2_] as §;f§).§8E§ == §+!5§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§%U§[_loc2_] as §;f§).setComponentState(§+!5§.§,7§);
               }
               _loc2_++;
            }
         }
         if(this.§3]§ == §83§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§%U§.length)
            {
               if((this.§%U§[_loc2_] as §;f§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§%U§[_loc2_] as §;f§).§8E§ == §+!5§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§%U§[_loc2_] as §;f§).setComponentState(§+!5§.§,7§);
                  }
                  else if((this.§%U§[_loc2_] as §;f§).§8E§ == §+!5§.§,7§)
                  {
                     if(this.§@k§().length < this.§'=§)
                     {
                        (this.§%U§[_loc2_] as §;f§).setComponentState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§@k§().length >= this.§'=§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§%U§.length)
                  {
                     if((this.§%U§[_loc3_] as §;f§).§8E§ == §+!5§.§,7§)
                     {
                        (this.§%U§[_loc3_] as §;f§).setComponentState(§+!5§.§ !G§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§%U§.length)
                  {
                     if((this.§%U§[_loc3_] as §;f§).§8E§ == §+!5§.§ !G§)
                     {
                        (this.§%U§[_loc3_] as §;f§).setComponentState(§+!5§.§,7§);
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
         while(_loc2_ < this.§%U§.length)
         {
            (this.§%U§[_loc2_] as §;f§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §`#§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§%U§.length)
         {
            (this.§%U§[_loc1_] as §;f§).setComponentState(§+!5§.§,7§);
            _loc1_++;
         }
      }
      
      public function §[&§(param1:Number) : void
      {
         this.§'=§ = param1;
         if(param1 == 1)
         {
            this.§3]§ = §^[§;
         }
         else
         {
            this.§3]§ = §83§;
         }
      }
      
      public function §!b§(param1:Array) : void
      {
         this.§`#§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§+x§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §@k§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%U§.length)
         {
            if((this.§%U§[_loc2_] as §;f§).§8E§ == §+!5§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§%U§[_loc2_] as §;f§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
