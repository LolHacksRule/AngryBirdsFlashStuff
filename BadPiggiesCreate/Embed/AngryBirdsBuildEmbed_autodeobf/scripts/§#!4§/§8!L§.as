package §#!4§
{
   import §"!E§.§#!'§;
   
   public class §8!L§
   {
      
      public static const §&p§:int = 0;
      
      public static const §2!n§:int = 1;
      
      public static const §+U§:int = 2;
       
      
      public var §&!p§:Array;
      
      public var §[q§:int;
      
      public var §&"§:int;
      
      public var mName:String;
      
      public var §@]§:String;
      
      public function §8!L§(param1:int, param2:String)
      {
         super();
         this.§&"§ = param1;
         this.mName = param2;
         this.§&!p§ = new Array();
      }
      
      public function §57§(param1:§#!'§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§&!p§[this.§&!p§.length] = param1;
      }
      
      public function §#!L§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§@]§ = param1;
         if(this.§&"§ == §&p§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§&!p§.length)
            {
               if((this.§&!p§[_loc2_] as §#!'§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§&!p§[_loc2_] as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§&!p§[_loc2_] as §#!'§).§-Y§ == §<f§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§&!p§[_loc2_] as §#!'§).setComponentState(§<f§.§`O§);
               }
               _loc2_++;
            }
         }
         if(this.§&"§ == §+U§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§&!p§.length)
            {
               if((this.§&!p§[_loc2_] as §#!'§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§&!p§[_loc2_] as §#!'§).§-Y§ == §<f§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§&!p§[_loc2_] as §#!'§).setComponentState(§<f§.§`O§);
                  }
                  else if((this.§&!p§[_loc2_] as §#!'§).§-Y§ == §<f§.§`O§)
                  {
                     if(this.§<<§().length < this.§[q§)
                     {
                        (this.§&!p§[_loc2_] as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§<<§().length >= this.§[q§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§&!p§.length)
                  {
                     if((this.§&!p§[_loc3_] as §#!'§).§-Y§ == §<f§.§`O§)
                     {
                        (this.§&!p§[_loc3_] as §#!'§).setComponentState(§<f§.§!`§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§&!p§.length)
                  {
                     if((this.§&!p§[_loc3_] as §#!'§).§-Y§ == §<f§.§!`§)
                     {
                        (this.§&!p§[_loc3_] as §#!'§).setComponentState(§<f§.§`O§);
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
         while(_loc2_ < this.§&!p§.length)
         {
            (this.§&!p§[_loc2_] as §#!'§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §!8§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!p§.length)
         {
            (this.§&!p§[_loc1_] as §#!'§).setComponentState(§<f§.§`O§);
            _loc1_++;
         }
      }
      
      public function §;[§(param1:Number) : void
      {
         this.§[q§ = param1;
         if(param1 == 1)
         {
            this.§&"§ = §&p§;
         }
         else
         {
            this.§&"§ = §+U§;
         }
      }
      
      public function §+!j§(param1:Array) : void
      {
         this.§!8§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§#!L§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §<<§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!p§.length)
         {
            if((this.§&!p§[_loc2_] as §#!'§).§-Y§ == §<f§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§&!p§[_loc2_] as §#!'§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
