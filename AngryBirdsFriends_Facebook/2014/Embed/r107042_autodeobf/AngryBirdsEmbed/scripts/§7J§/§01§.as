package §7J§
{
   import §2T§.§2H§;
   
   public class §01§
   {
      
      public static const §?!-§:int = 0;
      
      public static const §<v§:int = 1;
      
      public static const §`!;§:int = 2;
       
      
      public var §09§:Array;
      
      public var §"9§:int;
      
      public var §[`§:int;
      
      public var mName:String;
      
      public var §;!O§:String;
      
      public function §01§(param1:int, param2:String)
      {
         super();
         this.§[`§ = param1;
         this.mName = param2;
         this.§09§ = new Array();
      }
      
      public function §`!0§(param1:§2H§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§09§[this.§09§.length] = param1;
      }
      
      public function §]r§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§;!O§ = param1;
         if(this.§[`§ == §?!-§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§09§.length)
            {
               if((this.§09§[_loc2_] as §2H§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§09§[_loc2_] as §2H§).setComponentState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§09§[_loc2_] as §2H§).§'!B§ == §=U§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§09§[_loc2_] as §2H§).setComponentState(§=U§.§%! §);
               }
               _loc2_++;
            }
         }
         if(this.§[`§ == §`!;§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§09§.length)
            {
               if((this.§09§[_loc2_] as §2H§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§09§[_loc2_] as §2H§).§'!B§ == §=U§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§09§[_loc2_] as §2H§).setComponentState(§=U§.§%! §);
                  }
                  else if((this.§09§[_loc2_] as §2H§).§'!B§ == §=U§.§%! §)
                  {
                     if(this.§=!;§().length < this.§"9§)
                     {
                        (this.§09§[_loc2_] as §2H§).setComponentState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§=!;§().length >= this.§"9§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§09§.length)
                  {
                     if((this.§09§[_loc3_] as §2H§).§'!B§ == §=U§.§%! §)
                     {
                        (this.§09§[_loc3_] as §2H§).setComponentState(§=U§.§ S§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§09§.length)
                  {
                     if((this.§09§[_loc3_] as §2H§).§'!B§ == §=U§.§ S§)
                     {
                        (this.§09§[_loc3_] as §2H§).setComponentState(§=U§.§%! §);
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
         while(_loc2_ < this.§09§.length)
         {
            (this.§09§[_loc2_] as §2H§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §8A§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§09§.length)
         {
            (this.§09§[_loc1_] as §2H§).setComponentState(§=U§.§%! §);
            _loc1_++;
         }
      }
      
      public function §'q§(param1:Number) : void
      {
         this.§"9§ = param1;
         if(param1 == 1)
         {
            this.§[`§ = §?!-§;
         }
         else
         {
            this.§[`§ = §`!;§;
         }
      }
      
      public function §^J§(param1:Array) : void
      {
         this.§8A§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§]r§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §=!;§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§09§.length)
         {
            if((this.§09§[_loc2_] as §2H§).§'!B§ == §=U§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§09§[_loc2_] as §2H§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
