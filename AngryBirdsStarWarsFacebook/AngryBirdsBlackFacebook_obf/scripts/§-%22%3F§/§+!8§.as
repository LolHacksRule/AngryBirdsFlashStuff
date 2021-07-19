package §-"?§
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §+!8§ implements §3S§
   {
      
      private static var §7#9§:Shape;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §7#9§ = new Shape();
         }
      }
      
      private var § J§:Object;
      
      private var §=s§:String;
      
      private var §[!c§:Number;
      
      private var §;"d§:Number;
      
      private var §'!^§:Number;
      
      private var §2"o§:Number;
      
      private var §&N§:Function;
      
      public function §+!8§(param1:Object, param2:String, param3:Number, param4:Number, param5:Function)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.§&N§ = param5;
               while(true)
               {
                  this.§;"d§ = param4;
                  loop2:
                  for(; _loc6_ || param1; loop4:
                  for(; _loc6_ || param2; if(_loc7_ && this)
                  {
                     continue;
                  },§§goto(addr71))
                  {
                     this.§=s§ = param2;
                     while(_loc6_)
                     {
                        this.§ J§ = param1;
                        loop6:
                        do
                        {
                           this.§2"o§ = this.§ J§[this.§=s§];
                           loop7:
                           while(true)
                           {
                              this.§'!^§ = getTimer();
                              while(true)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    continue loop4;
                                 }
                                 continue loop7;
                                 addr71:
                                 §7#9§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                 if(_loc6_)
                                 {
                                    continue loop6;
                                 }
                              }
                              continue loop4;
                           }
                        }
                        while(_loc7_ && this);
                        
                        if(!_loc7_)
                        {
                           return;
                        }
                     }
                     continue loop0;
                  })
                  {
                     while(true)
                     {
                        this.§[!c§ = param3;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(getTimer() - this.§'!^§);
         if(_loc5_)
         {
            §§push(§§pop() * 0.001);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_)
         {
            §§push(§§pop() / this.§;"d§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            this.§ J§[this.§=s§] = this.§2"o§ + (this.§[!c§ - this.§2"o§) * Math.sin(_loc3_ * 1.55);
            while(_loc2_ >= this.§;"d§)
            {
               if(_loc5_)
               {
                  this.stop();
               }
               do
               {
                  this.§ J§[this.§=s§] = this.§[!c§;
                  do
                  {
                     this.§&N§();
                  }
                  while(_loc4_ && this);
                  
               }
               while(_loc4_);
               
               if(!_loc4_)
               {
                  addr81:
                  break;
               }
            }
            return;
         }
         §§goto(addr81);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §7#9§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            do
            {
               §4"u§.§'"5§(this);
            }
            while(_loc1_);
            
         }
      }
      
      public function get §!#]§() : Object
      {
         return this.§ J§;
      }
      
      public function set §!#]§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ J§ = param1;
         }
      }
   }
}
