package §2"a§
{
   import §!!U§.Sprite;
   import §7!F§.§7§;
   import §="2§.§?!r§;
   
   public class §["8§ extends §,^§
   {
       
      
      private var §4!I§:String;
      
      private var §#S§:Boolean;
      
      private var §4!=§:Number;
      
      private var §`c§:int;
      
      public function §["8§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2);
            while(true)
            {
               this.§4!I§ = param3;
               loop1:
               while(true)
               {
                  this.§#S§ = param4;
                  while(true)
                  {
                     this.§4!=§ = param5;
                     loop3:
                     while(_loc7_)
                     {
                        while(true)
                        {
                           this.§`c§ = param6;
                           if(!_loc8_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
               if(_loc8_ && param2)
               {
                  continue;
               }
               §§goto(addr53);
            }
         }
         §§goto(addr60);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7#5§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && param2))
                  {
                     §?!r§.§"#_§(this.§4!I§);
                  }
                  §§push(false);
                  continue;
               }
            }
            return §§pop();
         }
         while(true)
         {
            §§push(false);
            if(_loc4_)
            {
               break;
            }
            §§goto(addr33);
         }
         return §§pop();
      }
      
      override public function clone() : §,^§
      {
         return new §["8§(time,duration,this.§4!I§,this.§#S§,this.§4!=§,this.§`c§);
      }
   }
}
