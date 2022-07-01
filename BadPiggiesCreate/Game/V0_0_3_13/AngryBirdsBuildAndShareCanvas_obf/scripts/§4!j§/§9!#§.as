package §4!j§
{
   import § true§.§8K§;
   
   public class §9!#§
   {
      
      public static const §7!G§:int = 0;
      
      public static const §[!d§:int = 1;
      
      public static const §6!?§:int = 2;
       
      
      public var §6y§:Array;
      
      public var §-!F§:int;
      
      public var §4!I§:int;
      
      public var mName:String;
      
      public var §<X§:String;
      
      public function §9!#§(param1:int, param2:String)
      {
         super();
         this.§4!I§ = param1;
         this.mName = param2;
         this.§6y§ = new Array();
      }
      
      public function §;!,§(param1:§8K§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§6y§[this.§6y§.length] = param1;
      }
      
      public function §2n§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§<X§ = param1;
         if(this.§4!I§ == §7!G§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§6y§.length)
            {
               if((this.§6y§[_loc2_] as §8K§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§6y§[_loc2_] as §8K§).setComponentState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§6y§[_loc2_] as §8K§).§;X§ == §""3§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§6y§[_loc2_] as §8K§).setComponentState(§""3§.§!`§);
               }
               _loc2_++;
            }
         }
         if(this.§4!I§ == §6!?§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§6y§.length)
            {
               if((this.§6y§[_loc2_] as §8K§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§6y§[_loc2_] as §8K§).§;X§ == §""3§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§6y§[_loc2_] as §8K§).setComponentState(§""3§.§!`§);
                  }
                  else if((this.§6y§[_loc2_] as §8K§).§;X§ == §""3§.§!`§)
                  {
                     if(this.§%!2§().length < this.§-!F§)
                     {
                        (this.§6y§[_loc2_] as §8K§).setComponentState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§%!2§().length >= this.§-!F§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§6y§.length)
                  {
                     if((this.§6y§[_loc3_] as §8K§).§;X§ == §""3§.§!`§)
                     {
                        (this.§6y§[_loc3_] as §8K§).setComponentState(§""3§.override);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§6y§.length)
                  {
                     if((this.§6y§[_loc3_] as §8K§).§;X§ == §""3§.override)
                     {
                        (this.§6y§[_loc3_] as §8K§).setComponentState(§""3§.§!`§);
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
         while(_loc2_ < this.§6y§.length)
         {
            (this.§6y§[_loc2_] as §8K§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §%!n§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§6y§.length)
         {
            (this.§6y§[_loc1_] as §8K§).setComponentState(§""3§.§!`§);
            _loc1_++;
         }
      }
      
      public function §?">§(param1:Number) : void
      {
         this.§-!F§ = param1;
         if(param1 == 1)
         {
            this.§4!I§ = §7!G§;
         }
         else
         {
            this.§4!I§ = §6!?§;
         }
      }
      
      public function §!>§(param1:Array) : void
      {
         this.§%!n§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§2n§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §%!2§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§6y§.length)
         {
            if((this.§6y§[_loc2_] as §8K§).§;X§ == §""3§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§6y§[_loc2_] as §8K§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
