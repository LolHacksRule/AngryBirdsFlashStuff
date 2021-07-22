package §,!Q§
{
   import §#,§.§ !>§;
   
   public class §8$E§
   {
      
      public static const §9!B§:int = 0;
      
      public static const §#!S§:int = 1;
      
      public static const §+"=§:int = 2;
       
      
      public var §[">§:Array;
      
      public var §0$3§:int;
      
      public var §@4§:int;
      
      public var §!I§:String;
      
      public var §&#"§:String;
      
      public function §8$E§(param1:int, param2:String)
      {
         super();
         this.§@4§ = param1;
         this.§!I§ = param2;
         this.§[">§ = new Array();
      }
      
      public function § ##§(param1:§ !>§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§[">§[this.§[">§.length] = param1;
      }
      
      public function §5d§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.§&#"§ = param1;
         var _loc2_:String = param1.toUpperCase();
         if(this.§@4§ == §9!B§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§[">§.length)
            {
               if((this.§[">§[_loc3_] as § !>§).upperCaseName == _loc2_)
               {
                  (this.§[">§[_loc3_] as § !>§).setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§[">§[_loc3_] as § !>§).§>'§ == §+!2§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§[">§[_loc3_] as § !>§).setComponentState(§+!2§.§6v§);
               }
               _loc3_++;
            }
         }
         if(this.§@4§ == §+"=§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§[">§.length)
            {
               if((this.§[">§[_loc3_] as § !>§).upperCaseName == _loc2_)
               {
                  if((this.§[">§[_loc3_] as § !>§).§>'§ == §+!2§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§[">§[_loc3_] as § !>§).setComponentState(§+!2§.§6v§);
                  }
                  else if((this.§[">§[_loc3_] as § !>§).§>'§ == §+!2§.§6v§)
                  {
                     if(this.§5!N§().length < this.§0$3§)
                     {
                        (this.§[">§[_loc3_] as § !>§).setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§5!N§().length >= this.§0$3§)
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§[">§.length)
                  {
                     if((this.§[">§[_loc4_] as § !>§).§>'§ == §+!2§.§6v§)
                     {
                        (this.§[">§[_loc4_] as § !>§).setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
                     }
                     _loc4_++;
                  }
               }
               else
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§[">§.length)
                  {
                     if((this.§[">§[_loc4_] as § !>§).§>'§ == §+!2§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§[">§[_loc4_] as § !>§).setComponentState(§+!2§.§6v§);
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
         while(_loc3_ < this.§[">§.length)
         {
            (this.§[">§[_loc3_] as § !>§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §=!!§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[">§.length)
         {
            (this.§[">§[_loc1_] as § !>§).setComponentState(§+!2§.§6v§);
            _loc1_++;
         }
      }
      
      public function §4$9§(param1:Number) : void
      {
         this.§0$3§ = param1;
         if(param1 == 1)
         {
            this.§@4§ = §9!B§;
         }
         else
         {
            this.§@4§ = §+"=§;
         }
      }
      
      public function §^"o§(param1:Array) : void
      {
         this.§=!!§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§5d§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §5!N§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§[">§.length)
         {
            if((this.§[">§[_loc2_] as § !>§).§>'§ == §+!2§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§[">§[_loc2_] as § !>§).name);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
