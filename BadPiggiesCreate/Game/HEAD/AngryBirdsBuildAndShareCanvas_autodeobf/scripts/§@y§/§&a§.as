package §@y§
{
   import §=!7§.§9"8§;
   
   public class §&a§
   {
      
      public static const §in §:int = 0;
      
      public static const §,_§:int = 1;
      
      public static const §4`§:int = 2;
       
      
      public var §5f§:Array;
      
      public var §">§:int;
      
      public var §%!G§:int;
      
      public var mName:String;
      
      public var §]!w§:String;
      
      public function §&a§(param1:int, param2:String)
      {
         super();
         this.§%!G§ = param1;
         this.mName = param2;
         this.§5f§ = new Array();
      }
      
      public function §>[§(param1:§9"8§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§5f§[this.§5f§.length] = param1;
      }
      
      public function §>" §(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§]!w§ = param1;
         if(this.§%!G§ == §in §)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§5f§.length)
            {
               if((this.§5f§[_loc2_] as §9"8§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§5f§[_loc2_] as §9"8§).setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§5f§[_loc2_] as §9"8§).§-!2§ == §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§5f§[_loc2_] as §9"8§).setComponentState(§>!D§.§;!M§);
               }
               _loc2_++;
            }
         }
         if(this.§%!G§ == §4`§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§5f§.length)
            {
               if((this.§5f§[_loc2_] as §9"8§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§5f§[_loc2_] as §9"8§).§-!2§ == §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§5f§[_loc2_] as §9"8§).setComponentState(§>!D§.§;!M§);
                  }
                  else if((this.§5f§[_loc2_] as §9"8§).§-!2§ == §>!D§.§;!M§)
                  {
                     if(this.§'!6§().length < this.§">§)
                     {
                        (this.§5f§[_loc2_] as §9"8§).setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§'!6§().length >= this.§">§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§5f§.length)
                  {
                     if((this.§5f§[_loc3_] as §9"8§).§-!2§ == §>!D§.§;!M§)
                     {
                        (this.§5f§[_loc3_] as §9"8§).setComponentState(§>!D§.§&!j§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§5f§.length)
                  {
                     if((this.§5f§[_loc3_] as §9"8§).§-!2§ == §>!D§.§&!j§)
                     {
                        (this.§5f§[_loc3_] as §9"8§).setComponentState(§>!D§.§;!M§);
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
         while(_loc2_ < this.§5f§.length)
         {
            (this.§5f§[_loc2_] as §9"8§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §2!4§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§5f§.length)
         {
            (this.§5f§[_loc1_] as §9"8§).setComponentState(§>!D§.§;!M§);
            _loc1_++;
         }
      }
      
      public function §<!5§(param1:Number) : void
      {
         this.§">§ = param1;
         if(param1 == 1)
         {
            this.§%!G§ = §in §;
         }
         else
         {
            this.§%!G§ = §4`§;
         }
      }
      
      public function §9![§(param1:Array) : void
      {
         this.§2!4§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§>" §(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §'!6§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§5f§.length)
         {
            if((this.§5f§[_loc2_] as §9"8§).§-!2§ == §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§5f§[_loc2_] as §9"8§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
