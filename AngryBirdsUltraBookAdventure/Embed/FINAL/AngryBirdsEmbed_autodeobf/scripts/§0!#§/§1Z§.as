package §0!#§
{
   import §%4§.§7-§;
   
   public class §1Z§
   {
      
      public static const §?m§:int = 0;
      
      public static const §7Y§:int = 1;
      
      public static const §#?§:int = 2;
       
      
      public var §<F§:Array;
      
      public var §[K§:int;
      
      public var §<"§:int;
      
      public var mName:String;
      
      public var §0H§:String;
      
      public function §1Z§(param1:int, param2:String)
      {
         super();
         this.§<"§ = param1;
         this.mName = param2;
         this.§<F§ = new Array();
      }
      
      public function §[H§(param1:§7-§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§<F§[this.§<F§.length] = param1;
      }
      
      public function §>J§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§0H§ = param1;
         if(this.§<"§ == §?m§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§<F§.length)
            {
               if((this.§<F§[_loc2_] as §7-§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§<F§[_loc2_] as §7-§).setComponentState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§<F§[_loc2_] as §7-§).§0!5§ == §0K§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§<F§[_loc2_] as §7-§).setComponentState(§0K§.§use§);
               }
               _loc2_++;
            }
         }
         if(this.§<"§ == §#?§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§<F§.length)
            {
               if((this.§<F§[_loc2_] as §7-§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§<F§[_loc2_] as §7-§).§0!5§ == §0K§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§<F§[_loc2_] as §7-§).setComponentState(§0K§.§use§);
                  }
                  else if((this.§<F§[_loc2_] as §7-§).§0!5§ == §0K§.§use§)
                  {
                     if(this.§35§().length < this.§[K§)
                     {
                        (this.§<F§[_loc2_] as §7-§).setComponentState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§35§().length >= this.§[K§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§<F§.length)
                  {
                     if((this.§<F§[_loc3_] as §7-§).§0!5§ == §0K§.§use§)
                     {
                        (this.§<F§[_loc3_] as §7-§).setComponentState(§0K§.§]x§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§<F§.length)
                  {
                     if((this.§<F§[_loc3_] as §7-§).§0!5§ == §0K§.§]x§)
                     {
                        (this.§<F§[_loc3_] as §7-§).setComponentState(§0K§.§use§);
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
         while(_loc2_ < this.§<F§.length)
         {
            (this.§<F§[_loc2_] as §7-§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §'!J§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§<F§.length)
         {
            (this.§<F§[_loc1_] as §7-§).setComponentState(§0K§.§use§);
            _loc1_++;
         }
      }
      
      public function §6,§(param1:Number) : void
      {
         this.§[K§ = param1;
         if(param1 == 1)
         {
            this.§<"§ = §?m§;
         }
         else
         {
            this.§<"§ = §#?§;
         }
      }
      
      public function §[f§(param1:Array) : void
      {
         this.§'!J§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§>J§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §35§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§<F§.length)
         {
            if((this.§<F§[_loc2_] as §7-§).§0!5§ == §0K§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§<F§[_loc2_] as §7-§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
