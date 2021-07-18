package §1!t§
{
   import §%i§.§7"0§;
   
   public class §=",§
   {
      
      public static const §>I§:int = 0;
      
      public static const §"I§:int = 1;
      
      public static const §<F§:int = 2;
       
      
      public var §'!-§:Array;
      
      public var §9!k§:int;
      
      public var §'!'§:int;
      
      public var mName:String;
      
      public var §4!b§:String;
      
      public function §=",§(param1:int, param2:String)
      {
         super();
         this.§'!'§ = param1;
         this.mName = param2;
         this.§'!-§ = new Array();
      }
      
      public function §4!"§(param1:§7"0§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§'!-§[this.§'!-§.length] = param1;
      }
      
      public function §1!a§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§4!b§ = param1;
         if(this.§'!'§ == §>I§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§'!-§.length)
            {
               if((this.§'!-§[_loc2_] as §7"0§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§'!-§[_loc2_] as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§'!-§[_loc2_] as §7"0§).§4" § == §!!G§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§'!-§[_loc2_] as §7"0§).setComponentState(§!!G§.§@!T§);
               }
               _loc2_++;
            }
         }
         if(this.§'!'§ == §<F§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§'!-§.length)
            {
               if((this.§'!-§[_loc2_] as §7"0§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§'!-§[_loc2_] as §7"0§).§4" § == §!!G§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§'!-§[_loc2_] as §7"0§).setComponentState(§!!G§.§@!T§);
                  }
                  else if((this.§'!-§[_loc2_] as §7"0§).§4" § == §!!G§.§@!T§)
                  {
                     if(this.§2"+§().length < this.§9!k§)
                     {
                        (this.§'!-§[_loc2_] as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§2"+§().length >= this.§9!k§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§'!-§.length)
                  {
                     if((this.§'!-§[_loc3_] as §7"0§).§4" § == §!!G§.§@!T§)
                     {
                        (this.§'!-§[_loc3_] as §7"0§).setComponentState(§!!G§.§[E§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§'!-§.length)
                  {
                     if((this.§'!-§[_loc3_] as §7"0§).§4" § == §!!G§.§[E§)
                     {
                        (this.§'!-§[_loc3_] as §7"0§).setComponentState(§!!G§.§@!T§);
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
         while(_loc2_ < this.§'!-§.length)
         {
            (this.§'!-§[_loc2_] as §7"0§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §8;§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!-§.length)
         {
            (this.§'!-§[_loc1_] as §7"0§).setComponentState(§!!G§.§@!T§);
            _loc1_++;
         }
      }
      
      public function §=!+§(param1:Number) : void
      {
         this.§9!k§ = param1;
         if(param1 == 1)
         {
            this.§'!'§ = §>I§;
         }
         else
         {
            this.§'!'§ = §<F§;
         }
      }
      
      public function § !>§(param1:Array) : void
      {
         this.§8;§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§1!a§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §2"+§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!-§.length)
         {
            if((this.§'!-§[_loc2_] as §7"0§).§4" § == §!!G§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§'!-§[_loc2_] as §7"0§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
