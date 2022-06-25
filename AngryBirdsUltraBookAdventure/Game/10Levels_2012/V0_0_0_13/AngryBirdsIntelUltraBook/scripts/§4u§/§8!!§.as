package §4u§
{
   import §,!_§.TextureManager;
   import §6!7§.Sprite;
   import §=?§.SoundEngine;
   
   public class §8!!§ extends §^!I§
   {
       
      
      private var §@!B§:String;
      
      private var §;!T§:Boolean;
      
      private var §,#§:Number;
      
      private var §2%§:int;
      
      public function §8!!§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§@!B§ = param3;
               loop1:
               while(true)
               {
                  this.§;!T§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§,#§ = param5;
                     loop3:
                     while(_loc8_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§2%§ = param6;
                           if(!(_loc7_ && param1))
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(super.update(param1,param2,param3));
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr80:
               addr61:
               while(true)
               {
                  if(§§pop())
                  {
                     SoundEngine.§9!X§(this.§@!B§);
                     §§push(false);
                     break;
                  }
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return §§pop();
         }
         while(true)
         {
            §§push(false);
            if(_loc5_ || param2)
            {
               if(!(_loc4_ && param3))
               {
                  break;
               }
               §§goto(addr80);
            }
            §§goto(addr61);
         }
         return §§pop();
      }
      
      override public function clone() : §^!I§
      {
         return new §8!!§(time,duration,this.§@!B§,this.§;!T§,this.§,#§,this.§2%§);
      }
   }
}
