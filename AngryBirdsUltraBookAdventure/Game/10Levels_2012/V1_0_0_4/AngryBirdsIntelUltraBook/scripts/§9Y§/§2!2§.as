package §9Y§
{
   import §?!7§.§5!I§;
   
   public class §2!2§
   {
      
      public static const §1!G§:int = 0;
      
      public static const §1!v§:int = 1;
      
      public static const §0!]§:int = 2;
       
      
      public var §&!A§:Array;
      
      public var §<5§:int;
      
      public var §,s§:int;
      
      public var mName:String;
      
      public var §`H§:String;
      
      public function §2!2§(param1:int, param2:String)
      {
         super();
         this.§,s§ = param1;
         this.mName = param2;
         this.§&!A§ = new Array();
      }
      
      public function §+!-§(param1:§5!I§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§&!A§[this.§&!A§.length] = param1;
      }
      
      public function §`N§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§`H§ = param1;
         if(this.§,s§ == §1!G§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§&!A§.length)
            {
               if((this.§&!A§[_loc2_] as §5!I§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§&!A§[_loc2_] as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§&!A§[_loc2_] as §5!I§).§>!f§ == §+!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§&!A§[_loc2_] as §5!I§).setComponentState(§+!!§.§^!<§);
               }
               _loc2_++;
            }
         }
         if(this.§,s§ == §0!]§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§&!A§.length)
            {
               if((this.§&!A§[_loc2_] as §5!I§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§&!A§[_loc2_] as §5!I§).§>!f§ == §+!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§&!A§[_loc2_] as §5!I§).setComponentState(§+!!§.§^!<§);
                  }
                  else if((this.§&!A§[_loc2_] as §5!I§).§>!f§ == §+!!§.§^!<§)
                  {
                     if(this.§"h§().length < this.§<5§)
                     {
                        (this.§&!A§[_loc2_] as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§"h§().length >= this.§<5§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§&!A§.length)
                  {
                     if((this.§&!A§[_loc3_] as §5!I§).§>!f§ == §+!!§.§^!<§)
                     {
                        (this.§&!A§[_loc3_] as §5!I§).setComponentState(§+!!§.§ H§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§&!A§.length)
                  {
                     if((this.§&!A§[_loc3_] as §5!I§).§>!f§ == §+!!§.§ H§)
                     {
                        (this.§&!A§[_loc3_] as §5!I§).setComponentState(§+!!§.§^!<§);
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
         while(_loc2_ < this.§&!A§.length)
         {
            (this.§&!A§[_loc2_] as §5!I§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §0F§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!A§.length)
         {
            (this.§&!A§[_loc1_] as §5!I§).setComponentState(§+!!§.§^!<§);
            _loc1_++;
         }
      }
      
      public function §8!=§(param1:Number) : void
      {
         this.§<5§ = param1;
         if(param1 == 1)
         {
            this.§,s§ = §1!G§;
         }
         else
         {
            this.§,s§ = §0!]§;
         }
      }
      
      public function §9!f§(param1:Array) : void
      {
         this.§0F§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§`N§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §"h§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!A§.length)
         {
            if((this.§&!A§[_loc2_] as §5!I§).§>!f§ == §+!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§&!A§[_loc2_] as §5!I§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
