package §=R§
{
   import §`M§.§,c§;
   
   public class §6!M§
   {
      
      public static const §8A§:int = 0;
      
      public static const §8!"§:int = 1;
      
      public static const §#! §:int = 2;
       
      
      public var §2m§:Array;
      
      public var §,!%§:int;
      
      public var §2§:int;
      
      public var mName:String;
      
      public var §;!p§:String;
      
      public function §6!M§(param1:int, param2:String)
      {
         super();
         this.§2§ = param1;
         this.mName = param2;
         this.§2m§ = new Array();
      }
      
      public function §=v§(param1:§,c§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§2m§[this.§2m§.length] = param1;
      }
      
      public function §`?§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§;!p§ = param1;
         if(this.§2§ == §8A§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§2m§.length)
            {
               if((this.§2m§[_loc2_] as §,c§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§2m§[_loc2_] as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§2m§[_loc2_] as §,c§).§35§ == §5!a§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§2m§[_loc2_] as §,c§).setComponentState(§5!a§.§4]§);
               }
               _loc2_++;
            }
         }
         if(this.§2§ == §#! §)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§2m§.length)
            {
               if((this.§2m§[_loc2_] as §,c§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§2m§[_loc2_] as §,c§).§35§ == §5!a§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§2m§[_loc2_] as §,c§).setComponentState(§5!a§.§4]§);
                  }
                  else if((this.§2m§[_loc2_] as §,c§).§35§ == §5!a§.§4]§)
                  {
                     if(this.§'<§().length < this.§,!%§)
                     {
                        (this.§2m§[_loc2_] as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§'<§().length >= this.§,!%§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§2m§.length)
                  {
                     if((this.§2m§[_loc3_] as §,c§).§35§ == §5!a§.§4]§)
                     {
                        (this.§2m§[_loc3_] as §,c§).setComponentState(§5!a§.§-n§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§2m§.length)
                  {
                     if((this.§2m§[_loc3_] as §,c§).§35§ == §5!a§.§-n§)
                     {
                        (this.§2m§[_loc3_] as §,c§).setComponentState(§5!a§.§4]§);
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
         while(_loc2_ < this.§2m§.length)
         {
            (this.§2m§[_loc2_] as §,c§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §6!m§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§2m§.length)
         {
            (this.§2m§[_loc1_] as §,c§).setComponentState(§5!a§.§4]§);
            _loc1_++;
         }
      }
      
      public function §4U§(param1:Number) : void
      {
         this.§,!%§ = param1;
         if(param1 == 1)
         {
            this.§2§ = §8A§;
         }
         else
         {
            this.§2§ = §#! §;
         }
      }
      
      public function §@!1§(param1:Array) : void
      {
         this.§6!m§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§`?§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §'<§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§2m§.length)
         {
            if((this.§2m§[_loc2_] as §,c§).§35§ == §5!a§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§2m§[_loc2_] as §,c§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
