package §+!M§
{
   import §]!&§.§^!g§;
   
   public class §#!-§
   {
      
      public static const § !E§:int = 0;
      
      public static const §1B§:int = 1;
      
      public static const §"j§:int = 2;
       
      
      public var §[2§:Array;
      
      public var §2!;§:int;
      
      public var §1@§:int;
      
      public var mName:String;
      
      public var §9!8§:String;
      
      public function §#!-§(param1:int, param2:String)
      {
         super();
         this.§1@§ = param1;
         this.mName = param2;
         this.§[2§ = new Array();
      }
      
      public function §2!3§(param1:§^!g§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§[2§[this.§[2§.length] = param1;
      }
      
      public function §1!L§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§9!8§ = param1;
         if(this.§1@§ == § !E§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§[2§.length)
            {
               if((this.§[2§[_loc2_] as §^!g§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§[2§[_loc2_] as §^!g§).setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§[2§[_loc2_] as §^!g§).§ !T§ == §^<§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§[2§[_loc2_] as §^!g§).setComponentState(§^<§.§0!b§);
               }
               _loc2_++;
            }
         }
         if(this.§1@§ == §"j§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§[2§.length)
            {
               if((this.§[2§[_loc2_] as §^!g§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§[2§[_loc2_] as §^!g§).§ !T§ == §^<§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§[2§[_loc2_] as §^!g§).setComponentState(§^<§.§0!b§);
                  }
                  else if((this.§[2§[_loc2_] as §^!g§).§ !T§ == §^<§.§0!b§)
                  {
                     if(this.§>G§().length < this.§2!;§)
                     {
                        (this.§[2§[_loc2_] as §^!g§).setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§>G§().length >= this.§2!;§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§[2§.length)
                  {
                     if((this.§[2§[_loc3_] as §^!g§).§ !T§ == §^<§.§0!b§)
                     {
                        (this.§[2§[_loc3_] as §^!g§).setComponentState(§^<§.§-!O§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§[2§.length)
                  {
                     if((this.§[2§[_loc3_] as §^!g§).§ !T§ == §^<§.§-!O§)
                     {
                        (this.§[2§[_loc3_] as §^!g§).setComponentState(§^<§.§0!b§);
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
         while(_loc2_ < this.§[2§.length)
         {
            (this.§[2§[_loc2_] as §^!g§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §7I§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[2§.length)
         {
            (this.§[2§[_loc1_] as §^!g§).setComponentState(§^<§.§0!b§);
            _loc1_++;
         }
      }
      
      public function §4>§(param1:Number) : void
      {
         this.§2!;§ = param1;
         if(param1 == 1)
         {
            this.§1@§ = § !E§;
         }
         else
         {
            this.§1@§ = §"j§;
         }
      }
      
      public function §3!V§(param1:Array) : void
      {
         this.§7I§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§1!L§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §>G§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§[2§.length)
         {
            if((this.§[2§[_loc2_] as §^!g§).§ !T§ == §^<§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§[2§[_loc2_] as §^!g§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
